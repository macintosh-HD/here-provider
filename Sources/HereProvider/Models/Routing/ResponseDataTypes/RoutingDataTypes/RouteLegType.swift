import Vapor

public struct RouteLegType<T: ManeuverType>: Content {
    public let start: WaypointType?
    public let end: WaypointType?
    public let length: DistanceType?
    public let travelTime: DurationType?
    public let maneuver: [T]?
    public let link: [RouteLinkType]?
    public let boundingBox: GeoBoundingBoxType?
    public let shape: GeoPolylineType?
    public let firstPoint: Int?
    public let lastPoint: Int?
    public let trafficTime: DurationType?
    public let baseTime: DurationType?
    public let summary: RouteSummaryType?
    public let subLegSummary: [RouteSummaryType]?
}
