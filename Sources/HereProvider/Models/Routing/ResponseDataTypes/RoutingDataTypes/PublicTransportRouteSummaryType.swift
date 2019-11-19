import Vapor

public struct PublicTransportRouteSummaryType: RouteSummaryType {
    // inherited properties
    public let distance: DistanceType?
    public let trafficTime: DurationType?
    public let baseTime: DurationType?
    public let flags: [RouteLinkFlagType]?
    public let travelTime: DurationType?
    public let text: String?
    public let co2Emission: Double?
    public let costFactor: Int?
    public let routeId: String?
    
    public let departure: Date
    public let publicTransportFlags: PublicTransportFlagType
}
