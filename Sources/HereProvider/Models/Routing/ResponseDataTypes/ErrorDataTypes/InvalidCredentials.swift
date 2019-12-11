import Vapor

public final class InvalidCredentials: RoutingServiceErrorType {
    let requestToken: String
    
    init(details: String, requestToken: String) {
        self.requestToken = requestToken
        super.init(type: .PermissionError, subtype: "InvalidCredentials", details: details, additionalData: [KeyValuePairType<String, String>(key: "token", value: requestToken)])
    }
}

extension InvalidCredentials: Content {
    enum CodingKeys: CodingKey {
        case details, requestToken
    }
    
    public convenience init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let details = try container.decode(String.self, forKey: .details)
        let requestToken = try container.decode(String.self, forKey: .requestToken)
        self.init(details: details, requestToken: requestToken)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(details, forKey: .details)
        try container.encode(requestToken, forKey: .requestToken)
    }
}
