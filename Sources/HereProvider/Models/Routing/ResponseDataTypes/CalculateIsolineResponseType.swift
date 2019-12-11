import Vapor

public struct CalculateIsolineResponseType: HereRoutingResponseType {
    public let metaInfo: RouteResponseMetaInfoType
    public let center: GeoCoordinateType
    public let isoline: IsolineType
    public let start: WaypointType
    public let destination: WaypointType
}
