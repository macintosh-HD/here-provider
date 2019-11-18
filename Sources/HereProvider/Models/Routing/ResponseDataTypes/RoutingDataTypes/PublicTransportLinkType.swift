import Vapor

public final class PublicTransportLinkType: RouteLinkType {
    public let nextStopName: String?
    public let line: ElementReferenceType?
    
    init(linkId: LinkIdType, shape: GeoPolylineType?, firstPoint: Int?, lastPoint: Int?, length: DistanceType?, remainDistance: DistanceType?, remainTime: DurationType?, nextLink: LinkIdType?, maneuver: ElementReferenceType?, timeDependentRestrictionRef: Int?, nextStopName: String?, line: ElementReferenceType?) {
        super.init(linkId: linkId, shape: shape, firstPoint: firstPoint, lastPoint: lastPoint, length: length, remainDistance: remainDistance, remainTime: remainTime, nextLink: nextLink, maneuver: maneuver, timeDependentRestrictionRef: timeDependentRestrictionRef)
        
        self.nextStopName = nextStopName
        self.line = line
    }
}
