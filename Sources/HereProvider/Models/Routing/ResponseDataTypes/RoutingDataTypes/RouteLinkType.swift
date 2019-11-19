import Vapor

public protocol RouteLinkType: Content {
    var linkId: LinkIdType { get }
    var shape: GeoPolylineType? { get }
    var firstPoint: Int? { get }
    var lastPoint: Int? { get }
    var length: DistanceType? { get }
    var remainDistance: DistanceType? { get }
    var remainTime: DurationType? { get }
    var nextLink: LinkIdType? { get }
    var maneuver: ElementReferenceType? { get }
    var timeDependentRestrictionRef: Int? { get }
}
