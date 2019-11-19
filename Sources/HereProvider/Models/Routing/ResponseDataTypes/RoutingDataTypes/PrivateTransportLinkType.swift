import Vapor

public struct PrivateTransportLinkType: RouteLinkType {
    // inherited properties
    public let linkId: LinkIdType
    public let shape: GeoPolylineType?
    public let firstPoint: Int?
    public let lastPoint: Int?
    public let length: DistanceType?
    public let remainDistance: DistanceType?
    public let remainTime: DurationType?
    public let nextLink: LinkIdType?
    public let maneuver: ElementReferenceType?
    public let timeDependentRestrictionRef: Int?
    
    public let speedLimit: SpeedType?
    public let dynamicSpeedInfo: DynamicSpeedInfoType?
    public let flags: RouteLinkFlagType?
    public let functionalClass: FunctionalClassType?
    public let roadNumber: String?
    public let timezone: String?
    public let truckRestrictions: TruckRestrictionsType?
    public let roadName: String?
    public let consumption: Double?
}
