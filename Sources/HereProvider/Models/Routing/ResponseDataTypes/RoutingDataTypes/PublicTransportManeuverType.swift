import Vapor

public struct PublicTransportManeuverType: ManeuverType {
    public let action: PublicTransportActionType?
    public let stopName: String
    public let arrivalPlatform: String?
    public let departurePlatform: String?
    public let line: ElementReferenceType?
    public let toLine: ElementReferenceType?
    public let accessPointName: String?
    public let nextRoadName: String?
    public let waitTime: DurationType?
    public let timeEstimatePrecision: DurationType?
    public let ticket: DurationType?
    public let departureDelay: DurationType?
    public let arrivalDelay: DurationType?
}
