import Vapor

public final class RouteSummaryType: Content {
    public let distance: DistanceType?
    public let trafficTime: DurationType?
    public let baseTime: DurationType?
    public let flags: [RouteLinkFlagType]?
    public let travelTime: DurationType?
    public let text: String?
    public let co2Emission: Double?
    public let costFactor: Int?
    public let routeId: String?
    
    init(distance: DistanceType?, trafficTime: DurationType?, baseTime: DurationType?, flags: [RouteLinkFlagType]?, travelTime: DurationType?, text: String?, co2Emission: Double?, costFactor: Int?, routeId: String?) {
        self.distance = distance
        self.trafficTime = trafficTime
        self.baseTime = baseTime
        self.flags = flags
        self.travelTime = travelTime
        self.text = text
        self.co2Emission = co2Emission
        self.costFactor = costFactor
        self.routeId = routeId
    }
}
