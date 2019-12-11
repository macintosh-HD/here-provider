import Vapor

public enum ServiceErrorTypeType: String, Content {
    case ApplicationError, SystemError, PermissionError
}

public class ServiceErrorType: Error {
    public let type: ServiceErrorTypeType?
    public let subtype: String?
    public let details: String
    public let requestId: String?
    public let additionalData: [KeyValuePairType<String, String>]?
    
    init(type: ServiceErrorTypeType? = nil, subtype: String? = nil, details: String, requestId: String? = nil, additionalData: [KeyValuePairType<String, String>]? = nil) {
        self.type = type
        self.subtype = subtype
        self.details = details
        self.requestId = requestId
        self.additionalData = additionalData
    }
}

public class RoutingServiceErrorType: ServiceErrorType {
    public let metaInfo: RouteResponseMetaInfoType?
    
    init(type: ServiceErrorTypeType? = nil, subtype: String? = nil, details: String, requestId: String? = nil, additionalData: [KeyValuePairType<String, String>]? = nil, metaInfo: RouteResponseMetaInfoType? = nil) {
        self.metaInfo = metaInfo
        
        super.init(type: type, subtype: subtype, details: details, requestId: requestId, additionalData: additionalData)
    }
}

public final class RoutingServiceError: RoutingServiceErrorType {}

extension RoutingServiceError: Content {
    enum CodingKeys: CodingKey {
        case type, subtype, details, reqeustId, additionalData, metaInfo
    }
    
    public convenience init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let type = try container.decodeIfPresent(ServiceErrorTypeType.self, forKey: .type)
        let subtype = try container.decodeIfPresent(String.self, forKey: .subtype)
        let details = try container.decode(String.self, forKey: .details)
        let requestId = try container.decodeIfPresent(String.self, forKey: .reqeustId)
        let additionalData = try container.decodeIfPresent([KeyValuePairType<String, String>].self, forKey: .additionalData)
        let metaInfo = try container.decodeIfPresent(RouteResponseMetaInfoType.self, forKey: .metaInfo)
        
        self.init(type: type, subtype: subtype, details: details, requestId: requestId, additionalData: additionalData, metaInfo: metaInfo)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(subtype, forKey: .subtype)
        try container.encode(details, forKey: .details)
        try container.encodeIfPresent(requestId, forKey: .reqeustId)
        try container.encodeIfPresent(additionalData, forKey: .additionalData)
        try container.encodeIfPresent(metaInfo, forKey: .metaInfo)
    }
}
