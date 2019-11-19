import Vapor

public struct RouteType<T: ManeuverType>: Content {
    public let routeId: String?
    public let waypoint: [WaypointType]?
    public let mode: RoutingModeType
    public let shape: GeoPolylineType?
    public let boundingBox: GeoBoundingBoxType?
    public let leg: [RouteLegType<T>]?
    public let publicTransportLine: [PublicTransportLineType]?
    public let publicTransportTickets: [PublicTransportTicketsType]?
    public let note: [RouteNoteType]?
    public let summary: RouteSummaryType?
    public let summaryByCountry: [RouteSummaryByCountryType]?
    public let generalizations: [String]?
    public let maneuverGroup: [ManeuverGroupType]?
    public let incident: IncidentType?
    public let label: String?
    public let zone: [RoutingZoneType]?
    public let timeDependentRestriction: [TimeDependentRestrictionType]?
}
