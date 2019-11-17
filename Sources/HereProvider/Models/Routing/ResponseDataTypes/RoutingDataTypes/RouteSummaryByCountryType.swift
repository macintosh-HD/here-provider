import Vapor

public final class RouteSummaryByCountryType: RouteSummaryType {
    public let country: CountryCodeType
    public let tollRoadDistance: DistanceType
    
    init(distance: DistanceType?, trafficTime: DurationType?, baseTime: DurationType?, flags: [RouteLinkFlagType]?, travelTime: DurationType?, text: String?, co2Emission: Double?, costFactor: Int?, routeId: String?, country: CountryCodeType, tollRoadDistance: DistanceType) {
        super.init(distance: distance, trafficTime: trafficTime, baseTime: baseTime, flags: flags, travelTime: travelTime, text: text, co2Emission: co2Emission, costFactor: costFactor, routeId: routeId)
        
        self.country = country
        self.tollRoadDistance = tollRoadDistance
    }
}
