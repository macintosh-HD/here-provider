import Vapor

public struct GetRoutingZonesRequest: Content {
    public let appId: String
    public let appCode: String
    public let zoneIds: [RoutingZoneTypeType] = []
    public let contryCodes: String
}
