import Vapor

public struct GetRouteRequest: Content {
    public let appId: String
    public let appCode: String
    public let waypoint: WaypointParameterType
    public let requestId: String
    public let routeId: String
    public let mode: [RoutingModeType]
    public let departure: Date?
    public let metricSystem: SystemOfMeasurementType
    public let viewBounds: GeoBoundingBoxType
    public let generalizationTolerances: [Double]
    public let instructionFormat: InstructionFormatType
    public let language: String
    public let jsonAttributes: Int
    public let jsonCallback: String
    public let representation: [RouteRepresentationModeType]
    public let routeAttributes: [RouteAttributeType]
    public let maneuverAttributes: [ManeuverAttributeType]
    public let linkAttributes: [RouteLinkAttributeType]
    public let legAttributes: [RouteLegAttributeType]
    public let returnElevation: Bool
}
