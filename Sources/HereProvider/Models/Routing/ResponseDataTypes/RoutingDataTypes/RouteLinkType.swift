import Vapor

public class RouteLinkType: Content {
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
    
    init(linkId: LinkIdType, shape: GeoPolylineType?, firstPoint: Int?, lastPoint: Int?, length: DistanceType?, remainDistance: DistanceType?, remainTime: DurationType?, nextLink: LinkIdType?, maneuver: ElementReferenceType?, timeDependentRestrictionRef: Int?) {
        self.linkId = linkId
        self.shape = shape
        self.firstPoint = firstPoint
        self.lastPoint = lastPoint
        self.length = length
        self.remainDistance = remainDistance
        self.remainTime = remainTime
        self.nextLink = nextLink
        self.maneuver = maneuver
        self.timeDependentRestrictionRef = timeDependentRestrictionRef
    }
}
