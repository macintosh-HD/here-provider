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
    
    init(type: ServiceErrorTypeType?, subtype: String?, details: String, requestId: String?, additionalData: [KeyValuePairType<String, String>]?) {
        self.type = type
        self.subtype = subtype
        self.details = details
        self.requestId = requestId
        self.additionalData = additionalData
    }
}

public class RoutingServiceErrorType: ServiceErrorType {
    public let metaInfo: RouteResponseMetaInfoType?
    
    init(type: ServiceErrorTypeType?, subtype: String?, details: String, requestId: String?, additionalData: [KeyValuePairType<String, String>]?, metaInfo: RouteResponseMetaInfoType?) {
        super.init(type: type, subtype: subtype, details: details, requestId: requestId, additionalData: additionalData)
        
        self.metaInfo = metaInfo
    }
}
