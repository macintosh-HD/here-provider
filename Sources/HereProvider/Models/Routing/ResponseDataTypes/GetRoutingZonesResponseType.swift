import Vapor

public struct GetRoutingZonesResponseType: HereRoutingResponseType {
    public let metaInfo: RouteResponseMetaInfoType
    public let zone: [RoutingZoneType]
}
