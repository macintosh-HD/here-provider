import Vapor

public final class PrivateTransportManeuverType: ManeuverType {
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
    
    init(id: ElementReferenceType, position: GeoCoordinateType?, instruction: String, travelTime: DurationType?, length: DistanceType?, shape: GeoPolylineType?, firstPoint: Int?, lastPoint: Int?, time: Date?, note: RouteNoteType?, nextManeuver: ElementReferenceType?, toLink: LinkIdType?, boundingBox: GeoBoundingBoxType?, shapeQuality: ShapeQualityType?, direction: DirectionType?, action: PrivateTransportActionType?, roadName: String?, signPost: String?, nextRoadName: String?, roadNumber: String?, nextRoadNumber: String?, freewayExit: String?, freewayJunction: String?, trafficTime: DurationType?, baseTime: DurationType?, roadShield: RoadShieldType?, startAngle: Int?) {
        super.init(id: id, position: position, instruction: instruction, travelTime: travelTime, length: length, shape: shape, firstPoint: firstPoint, lastPoint: lastPoint, time: time, note: note, nextManeuver: nextManeuver, toLink: toLink, boundingBox: boundingBox, shapeQuality: shapeQuality)
        
        self.direction = direction
        self.action = action
        self.roadName = roadName
        self.signPost = signPost
        self.nextRoadName = nextRoadName
        self.roadNumber = roadNumber
        self.nextRoadNumber = nextRoadNumber
        self.freewayExit = freewayExit
        self.freewayJunction = freewayJunction
        self.trafficTime = trafficTime
        self.baseTime = baseTime
        self.roadShield = roadShield
        self.startAngle = startAngle
    }
}
