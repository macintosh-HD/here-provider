import Vapor

public struct GetRoutingZonesResponseType: Content {
    public let metaInfo: RouteResponseMetaInfoType
    public let zone: [RoutingZoneType]
}
