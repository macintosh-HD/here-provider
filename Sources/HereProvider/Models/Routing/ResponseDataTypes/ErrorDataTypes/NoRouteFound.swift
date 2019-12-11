import Vapor

public final class NoRouteFound: RoutingServiceErrorType {
    init(details: String) {
        super.init(type: .ApplicationError, subtype: "NoRouteFound", details: details)
    }
}

extension NoRouteFound: Content {
    enum CodingKeys: CodingKey {
        case details
    }
    
    public convenience init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let details = try container.decode(String.self, forKey: .details)
        self.init(details: details)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(details, forKey: .details)
    }
}
