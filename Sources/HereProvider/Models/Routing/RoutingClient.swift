import Vapor

final class HereRoutingClient: Service {
    let httpClient: Client
    let appId: String
    let appCode: String
    
    let format: HereFormats = .json
    
    let calculateRouteEndpoint = "https://route.api.here.com/routing/7.2/calculateroute."
    let getRouteEndpoint = "https://route.api.here.com/routing/7.2/getroute."
    let getRoutingZonesEndpoint = "https://route.api.here.com/routing/7.2/getroutingzones."
    let calculateIsonlineEndpoint = "https://isoline.route.api.here.com/routing/7.2/calculateisoline."
    let calculateMatrixEndpoint = "https://matrix.route.api.here.com/routing/7.2/calculatematrix."
        
    init(httpClient: Client, config: HereConfig) {
        self.httpClient = httpClient
        self.appId = config.appId
        self.appCode = config.appCode
    }
    
    func calculateRoute<W: WaypointParameterType, C: ConsumptionModelDetailType, M: ManeuverType, L: RouteLinkType, S: RouteSummaryType>(_ input: RouteCalculationRequest<W, C>) throws -> Future<CalculateRouteResponseType<M, L, S>> {
        let urlString = calculateRouteEndpoint + format.rawValue + "?app_id=\(appId)&app_code=\(appCode)" + input.requestParameters
        guard let requestURL = URL(string: urlString) else {
            throw Abort(.internalServerError, reason: "Could not create request URL.")
        }
        
        return httpClient.get(requestURL).flatMap { response in
            do {
                return try response.content.decode(CalculateRouteResponseType.self)
            } catch {
                throw Abort(.internalServerError)
            }
        }
    }
    
    func getRoute<W: WaypointParameterType, M: ManeuverType, L: RouteLinkType, S: RouteSummaryType>(_ input: GetRouteRequest<W>) throws -> Future<GetRouteResponseType<M, L, S>> {
        
    }
    
    func getRoutingZones(_ input: GetRoutingZonesRequest) throws -> Future<GetRoutingZonesResponseType> {
        
    }
    
    func calculateIsoline<W: WaypointParameterType>(_ input: CalculateIsolineRequest<W>) throws -> Future<CalculateIsolineResponseType> {
        
    }
    
    func calculateMatrix<W: WaypointParameterType, S: RouteSummaryType>(_ input: CalculateMatrixRequest<W>) throws -> Future<CalculateMatrixResponseType<S>> {
        
    }
}
