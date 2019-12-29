import Vapor

public final class HereRoutingClient: Service {
    let httpClient: Client
    let appId: String
    let appCode: String
    
    let format: HereFormats = .json
    
    let calculateRouteEndpoint = "https://route.api.here.com/routing/7.2/calculateroute."
    let getRouteEndpoint = "https://route.api.here.com/routing/7.2/getroute."
    let getRoutingZonesEndpoint = "https://route.api.here.com/routing/7.2/getroutingzones."
    let calculateIsonlineEndpoint = "https://isoline.route.api.here.com/routing/7.2/calculateisoline."
    let calculateMatrixEndpoint = "https://matrix.route.api.here.com/routing/7.2/calculatematrix."
        
    public init(httpClient: Client, config: HereConfig) {
        self.httpClient = httpClient
        self.appId = config.appId
        self.appCode = config.appCode
    }
    
    public func calculateRoute<W: WaypointParameterType, C: ConsumptionModelDetailType, M: ManeuverType, L: RouteLinkType, S: RouteSummaryType>(_ input: RouteCalculationRequest<W, C>) throws -> Future<HereRoutingResponse<CalculateRouteResponseType<M, L, S>>?> {
        let urlString = calculateRouteEndpoint + format.rawValue + "?app_id=\(appId)&app_code=\(appCode)" + input.requestParameters
        guard let requestURL = URL(string: urlString) else {
            throw Abort(.internalServerError, reason: "Could not create request URL.")
        }
        
        return httpClient.get(requestURL).flatMap { response in
            guard response.http.status == .ok else {
                return try response.content.decode(RoutingServiceError.self).flatMap { error in
                    var possibleCauses = [String]()
                    if let additionalData = error.additionalData {
                        possibleCauses = additionalData.map { data in
                            "\(data.key): \(data.value)"
                        }
                    }
                    
                    switch error.type {
                    case .ApplicationError:
                        switch error.subtype {
                        case "NoRouteFound":
                            return self.httpClient.container.future(nil)
                        default:
                            throw Abort(response.http.status, reason: error.details, possibleCauses: possibleCauses)
                        }
                    default:
                        throw Abort(response.http.status, reason: error.details, possibleCauses: possibleCauses)
                    }
                }
            }
            
            return try response.content.decode(HereRoutingResponse?.self).catchMap { error in
                throw Abort(.internalServerError, reason: "Could not decode route response.")
            }
        }
    }
    
    public func getRoute<W: WaypointParameterType, M: ManeuverType, L: RouteLinkType, S: RouteSummaryType>(_ input: GetRouteRequest<W>) throws -> Future<HereRoutingResponse<GetRouteResponseType<M, L, S>>> {
        let urlString = getRouteEndpoint + format.rawValue + "?app_id=\(appId)&app_code=\(appCode)" /* + input.requestParameters */
        guard let requestURL = URL(string: urlString) else {
            throw Abort(.internalServerError, reason: "Could not create request URL.")
        }
        
        return httpClient.get(requestURL).flatMap { response in
            do {
                return try response.content.decode(HereRoutingResponse.self)
            } catch {
                throw Abort(.internalServerError)
            }
        }
    }
    
    public func getRoutingZones(_ input: GetRoutingZonesRequest) throws -> Future<HereRoutingResponse<GetRoutingZonesResponseType>> {
        let urlString = getRoutingZonesEndpoint + format.rawValue + "?app_id=\(appId)&app_code=\(appCode)" /* + input.requestParameters */
        guard let requestURL = URL(string: urlString) else {
            throw Abort(.internalServerError, reason: "Could not create request URL.")
        }
        
        return httpClient.get(requestURL).flatMap { response in
            do {
                return try response.content.decode(HereRoutingResponse.self)
            } catch {
                throw Abort(.internalServerError)
            }
        }
    }
    
    public func calculateIsoline<W: WaypointParameterType>(_ input: CalculateIsolineRequest<W>) throws -> Future<HereRoutingResponse<CalculateIsolineResponseType>> {
        let urlString = calculateIsonlineEndpoint + format.rawValue + "?app_id=\(appId)&app_code=\(appCode)" /* + input.requestParameters */
        guard let requestURL = URL(string: urlString) else {
            throw Abort(.internalServerError, reason: "Could not create request URL.")
        }
        
        return httpClient.get(requestURL).flatMap { response in
            do {
                return try response.content.decode(HereRoutingResponse.self)
            } catch {
                throw Abort(.internalServerError)
            }
        }
    }
    
    public func calculateMatrix<W: WaypointParameterType, S: RouteSummaryType>(_ input: CalculateMatrixRequest<W>) throws -> Future<HereRoutingResponse<CalculateMatrixResponseType<S>>> {
        let urlString = calculateMatrixEndpoint + format.rawValue + "?app_id=\(appId)&app_code=\(appCode)" /* + input.requestParameters */
        guard let requestURL = URL(string: urlString) else {
            throw Abort(.internalServerError, reason: "Could not create request URL.")
        }
        
        return httpClient.get(requestURL).flatMap { response in
            do {
                return try response.content.decode(HereRoutingResponse.self)
            } catch {
                throw Abort(.internalServerError)
            }
        }
    }
}
