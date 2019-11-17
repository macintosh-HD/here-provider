import Vapor

public struct RouteResponseMetaInfoType: Content {
    public let requestId: String?
    public let timestamp: String?
    public let mapVersion: String?
    public let availableMapVersion: String?
    public let moduleVersion: String?
    public let interfaceVersion: String
}
