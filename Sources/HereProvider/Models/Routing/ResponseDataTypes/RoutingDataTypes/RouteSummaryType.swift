import Vapor

public protocol RouteSummaryType: Content {
    var distance: DistanceType? { get }
    var trafficTime: DurationType? { get }
    var baseTime: DurationType? { get }
    var flags: [RouteLinkFlagType]? { get }
    var travelTime: DurationType? { get }
    var text: String? { get }
    var co2Emission: Double? { get }
    var costFactor: Int? { get }
    var routeId: String? { get }
}

public struct RouteSummaryTypeType: RouteSummaryType, Content {
    public let distance: DistanceType?
    public let trafficTime: DurationType?
    public let baseTime: DurationType?
    public let flags: [RouteLinkFlagType]?
    public let travelTime: DurationType?
    public let text: String?
    public let co2Emission: Double?
    public let costFactor: Int?
    public let routeId: String?
}
