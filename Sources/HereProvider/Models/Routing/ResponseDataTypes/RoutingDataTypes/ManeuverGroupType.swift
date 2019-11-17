import Vapor

public struct ManeuverGroupType: Content {
    public let firstManeuver: ElementReferenceType
    public let lastManeuver: ElementReferenceType
    public let mode: RoutingModeType
    public let summaryDescription: String
    public let arrivalDescription: String
    public let waitDescription: String
    public let publicTransportType: PublicTransportTypeType
}
