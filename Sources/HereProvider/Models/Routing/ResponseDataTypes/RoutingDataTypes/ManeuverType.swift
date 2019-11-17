import Vapor

public final class ManeuverType: Content {
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
    
    init(id: ElementReferenceType, position: GeoCoordinateType?, instruction: String, travelTime: DurationType?, length: DistanceType?, shape: GeoPolylineType?, firstPoint: Int?, lastPoint: Int?, time: Date?, note: RouteNoteType?, nextManeuver: ElementReferenceType?, toLink: LinkIdType?, boundingBox: GeoBoundingBoxType?, shapeQuality: ShapeQualityType?) {
        self.id = id
        self.position = position
        self.instruction = instruction
        self.travelTime = travelTime
        self.length = length
        self.shape = shape
        self.firstPoint = firstPoint
        self.lastPoint = lastPoint
        self.time = time
        self.note = note
        self.nextManeuver = nextManeuver
        self.toLink = toLink
        self.boundingBox = boundingBox
        self.shapeQuality = shapeQuality
    }
}
