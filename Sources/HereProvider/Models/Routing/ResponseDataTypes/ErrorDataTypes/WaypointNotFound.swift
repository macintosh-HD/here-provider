import Vapor

public final class WaypointNotFound: RoutingServiceErrorType {
    init(details: String, additionalData: [KeyValuePairType<String, String>]) {
        super.init(type: .ApplicationError, subtype: "WaypointNotFound", details: details, additionalData: additionalData)
    }
}

extension WaypointNotFound: Content {
    enum CodingKeys: CodingKey {
        case details, additionalData
    }
    
    public convenience init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let details = try container.decode(String.self, forKey: .details)
        let additionalData = try container.decode([KeyValuePairType<String, String>].self, forKey: .additionalData)
        self.init(details: details, additionalData: additionalData)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(details, forKey: .details)
        try container.encode(additionalData, forKey: .additionalData)
    }
}
