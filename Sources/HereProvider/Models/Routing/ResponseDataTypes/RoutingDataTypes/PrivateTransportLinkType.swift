import Vapor

public class PrivateTransportLinkType: RouteLinkType {
    public let speedLimit: SpeedType?
    public let dynamicSpeedInfo: DynamicSpeedInfoType?
    public let flags: RouteLinkFlagType?
    public let functionalClass: FunctionalClassType?
    public let roadNumber: String?
    public let timezone: String?
    public let truckRestrictions: TruckRestrictionsType?
    public let roadName: String?
    public let consumption: Double?
    
    init(linkId: LinkIdType, shape: GeoPolylineType, firstPoint: Int, lastPoint: Int, length: DistanceType, remainDistance: DistanceType, remainTime: DurationType, nextLink: LinkIdType, maneuver: ElementReferenceType, timeDependentRestrictionRef: Int, speedLimit: SpeedType?, dynamicSpeedInfo: DynamicSpeedInfoType?, flags: RouteLinkFlagType?, functionalClass: FunctionalClassType?, roadNumber: String?, timezone: String?, truckRestrictions: TruckRestrictionsType?, roadName: String?, consumption: Double?) {
        super.init(linkId: linkId, shape: shape, firstPoint: firstPoint, lastPoint: lastPoint, length: length, remainDistance: remainDistance, remainTime: remainTime, nextLink: nextLink, maneuver: maneuver, timeDependentRestrictionRef: timeDependentRestrictionRef)
        
        self.speedLimit = speedLimit
        self.dynamicSpeedInfo = dynamicSpeedInfo
        self.flags = flags
        self.functionalClass = functionalClass
        self.roadNumber = roadNumber
        self.timezone = timezone
        self.truckRestrictions = truckRestrictions
        self.roadName = roadName
        self.consumption = consumption
    }
}
