import Vapor

public enum ServiceErrorTypeType: String, Content {
    case ApplicationError, SystemError, PermissionError
}

public protocol ServiceErrorType: Error {
    public let type: ServiceErrorTypeType
    public let subtype: String
    public let details: String
    public let requestId: String
    public let additionalData: [KeyValuePairType<String, String>]?
}

public struct RoutingServiceErrorType: ServiceErrorType {
    public let metaInfo: RouteResponseMetaInfoType
}
