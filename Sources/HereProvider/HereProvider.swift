import Vapor

public struct HereConfig: Service {
    let appId: String
    let appCode: String
    
    public init(appId: String, appCode: String) {
        self.appId = appId
        self.appCode = appCode
    }
}

public final class HereProvider: Provider {
    public init() {}
    
    public func didBoot(_ container: Container) throws -> Future<Void> {
        return .done(on: container)
    }
    
    public func register(_ services: inout Services) throws {
        services.register { (container) -> HereGeocodingClient in
            let httpClient = try container.make(Client.self)
            let config = try container.make(HereConfig.self)
            return HereGeocodingClient(httpClient: httpClient, config: config)
        }
        
        services.register { (container) -> HereRoutingClient in
            let httpClient = try container.make(Client.self)
            let config = try container.make(HereConfig.self)
            return HereRoutingClient(httpClient: httpClient, config: config)
        }
    }
}
