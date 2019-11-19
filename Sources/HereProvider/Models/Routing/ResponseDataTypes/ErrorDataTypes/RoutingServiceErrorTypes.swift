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
