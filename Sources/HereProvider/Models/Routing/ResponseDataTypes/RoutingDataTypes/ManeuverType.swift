import Vapor

public protocol ManeuverType: Content {
    var id: ElementReferenceType { get }
    var position: GeoCoordinateType? { get }
    var instruction: String { get }
    var travelTime: DurationType? { get }
    var length: DistanceType? { get }
    var shape: GeoPolylineType? { get }
    var firstPoint: Int? { get }
    var lastPoint: Int? { get }
    var time: Date? { get }
    var note: RouteNoteType? { get }
    var nextManeuver: ElementReferenceType? { get }
    var toLink: LinkIdType? { get }
    var boundingBox: GeoBoundingBoxType? { get }
    var shapeQuality: ShapeQualityType? { get }
}
