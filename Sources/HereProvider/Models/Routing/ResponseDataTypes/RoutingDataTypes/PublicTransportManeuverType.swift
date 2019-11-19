import Vapor

public struct PublicTransportManeuverType: ManeuverType {
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
}
