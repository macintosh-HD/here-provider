import Vapor

public struct PublicTransportLinkType: RouteLinkType {
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
    
    public let nextStopName: String?
    public let line: ElementReferenceType?
}
