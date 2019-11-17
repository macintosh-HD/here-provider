import Vapor

public final class PublicTransportRouteSummaryType: RouteSummaryType {
    public let departure: Date
    public let publicTransportFlags: PublicTransportFlagType
    
    init(distance: DistanceType, trafficTime: DurationType, baseTime: DurationType?, flags: [RouteLinkFlagType]?, travelTime: DurationType?, text: String?, co2Emission: Double?, costFactor: Int?, routeId: String?, departure: Date, publicTransportFlags: PublicTransportFlagType) {
        super.init(distance: distance, trafficTime: trafficTime, baseTime: baseTime, flags: flags, travelTime: travelTime, text: text, co2Emission: co2Emission, costFactor: costFactor, routeId: routeId)
        
        self.departure = departure
        self.publicTransportFlags = publicTransportFlags
    }
}
