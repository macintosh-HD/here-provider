import Vapor

public struct RouteSummaryByCountryType: RouteSummaryType {
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
    
    public let country: CountryCodeType
    public let tollRoadDistance: DistanceType
}
