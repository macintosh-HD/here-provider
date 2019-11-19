import Vapor

public struct RouteLegType<M: ManeuverType, L: RouteLinkType, S: RouteSummaryType>: Content {
    public let start: WaypointType?
    public let end: WaypointType?
    public let length: DistanceType?
    public let travelTime: DurationType?
    public let maneuver: [M]?
    public let link: [L]?
    public let boundingBox: GeoBoundingBoxType?
    public let shape: GeoPolylineType?
    public let firstPoint: Int?
    public let lastPoint: Int?
    public let trafficTime: DurationType?
    public let baseTime: DurationType?
    public let summary: S?
    public let subLegSummary: [S]?
}
