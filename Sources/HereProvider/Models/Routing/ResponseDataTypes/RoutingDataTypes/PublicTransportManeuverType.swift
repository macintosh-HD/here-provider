import Vapor

public class PublicTransportManeuverType: ManeuverType {
    public let action: PublicTransportActionType?
    public let stopName: String
    public let arrivalPlatform: String?
    public let departurePlatform: String?
    public let line: ElementReferenceType?
    public let toLine: ElementReferenceType?
    public let accessPointName: String?
    public let nextRoadName: String?
    public let waitTime: DurationType?
    public let timeEstimatePrecision: DurationType?
    public let ticket: DurationType?
    public let departureDelay: DurationType?
    public let arrivalDelay: DurationType?
    
    init(id: ElementReferenceType, position: GeoCoordinateType?, instruction: String, travelTime: DurationType?, length: DistanceType?, shape: GeoPolylineType?, firstPoint: Int?, lastPoint: Int?, time: Date?, note: RouteNoteType?, nextManeuver: ElementReferenceType?, toLink: LinkIdType?, boundingBox: GeoBoundingBoxType?, shapeQuality: ShapeQualityType?, action: PublicTransportActionType?, stopName: String, arrivalPlatform: String?, departurePlatform: String?, line: ElementReferenceType?, toLine: ElementReferenceType?, accessPointName: String?, nextRoadName: String?, waitTime: DurationType?, timeEstimatePrecision: DurationType?, ticket: DurationType?, departureDelay: DurationType?, arrivalDelay: DurationType?) {
        super.init(id: id, position: position, instruction: instruction, travelTime: travelTime, length: length, shape: shape, firstPoint: firstPoint, lastPoint: lastPoint, time: time, note: note, nextManeuver: nextManeuver, toLink: toLink, boundingBox: boundingBox, shapeQuality: shapeQuality)
        
        self.action = action
        self.stopName = stopName
        self.arrivalPlatform = arrivalPlatform
        self.departurePlatform = departurePlatform
        self.line = line
        self.toLine = toLine
        self.accessPointName = accessPointName
        self.nextRoadName = nextRoadName
        self.waitTime = waitTime
        self.timeEstimatePrecision = timeEstimatePrecision
        self.ticket = ticket
        self.departureDelay = departureDelay
        self.arrivalDelay = arrivalDelay
    }
}
