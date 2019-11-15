import Vapor

final class HereRoutingClient: Service {
    let httpClient: Client
    let appID: String
    let appCode: String
    
    let format: HereFormat = .json
    
    let calculateRouteEndpoint = "https://route.api.here.com/routing/7.2/calculateroute."
    let getRouteEndpoint = "https://route.api.here.com/routing/7.2/getroute."
    let getRoutingZonesEndpoint = "https://route.api.here.com/routing/7.2/getroutingzones."
    let calculateIsonlineEndpoint = "https://isoline.route.api.here.com/routing/7.2/calculateisoline."
    let calculateMatrixEndpoint = "https://matrix.route.api.here.com/routing/7.2/calculatematrix."
        
    init(httpClient: Client, config: HereConfig) {
        self.httpClient = httpClient
        self.appID = config.appId
        self.appCode = config.appCode
    }
    
    func calculateRoute(_ input: RouteCalculationRequest) throws -> Future<CalculateRouteResponseType> {
        let urlString = calculateRouteEndpoint + format.rawValue + input.requestParameters
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
    
    func getRoute(_ input: GetRouteRequest) throws -> Future<GetRouteResponseType> {
        
    }
    
    func getRoutingZones(_ input: GetRoutingZonesRequest) throws -> Future<GetRoutingZonesResponseType> {
        
    }
    
    func calculateIsoline(_ input: CalculateIsolineRequest) throws -> Future<CalculateIsolineResponseType> {
        
    }
    
    func calculateMatrix(_ input: CalculateMatrixRequest) throws -> Future<CalculateMatricResponseType> {
        
    }
}
