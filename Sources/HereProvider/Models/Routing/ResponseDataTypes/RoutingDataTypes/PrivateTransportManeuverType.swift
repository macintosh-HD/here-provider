import Vapor

public struct PrivateTransportManeuverType: ManeuverType {
    // inherited properties
    public let id: ElementReferenceType
    public let position: GeoCoordinateType?
    public let instruction: String
    public let travelTime: DurationType?
    public let length: DistanceType?
    public let shape: GeoPolylineType?
    public let firstPoint: Int?
    public let lastPoint: Int?
    public let time: Date?
    public let note: RouteNoteType?
    public let nextManeuver: ElementReferenceType?
    public let toLink: LinkIdType?
    public let boundingBox: GeoBoundingBoxType?
    public let shapeQuality: ShapeQualityType?
    
    public let direction: DirectionType?
    public let action: PrivateTransportActionType?
    public let roadName: String?
    public let signPost: String?
    public let nextRoadName: String?
    public let roadNumber: String?
    public let nextRoadNumber: String?
    public let freewayExit: String?
    public let freewayJunction: String?
    public let trafficTime: DurationType?
    public let baseTime: DurationType?
    public let roadShield: RoadShieldType?
    public let startAngle: Int?
}
