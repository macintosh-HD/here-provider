import Vapor

public struct RouteType<M: ManeuverType, L: RouteLinkType, S: RouteSummaryType>: Content {
    public let routeId: String?
    public let waypoint: [WaypointType]?
    public let mode: RoutingModeType
    public let shape: GeoPolylineType?
    public let boundingBox: GeoBoundingBoxType?
    public let leg: [RouteLegType<M, L, S>]?
    public let publicTransportLine: [PublicTransportLineType]?
    public let publicTransportTickets: [PublicTransportTicketsType]?
    public let note: [RouteNoteType]?
    public let summary: S?
    public let summaryByCountry: [RouteSummaryByCountryType]?
    public let generalizations: [String]?
    public let maneuverGroup: [ManeuverGroupType]?
    public let incident: IncidentType?
    public let label: String?
    public let zone: [RoutingZoneType]?
    public let timeDependentRestriction: [TimeDependentRestrictionType]?
}
