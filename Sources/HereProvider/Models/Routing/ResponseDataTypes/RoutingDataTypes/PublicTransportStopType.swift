import Vapor

public struct PublicTransportStopType: Content {
    public let id: ElementReferenceType
    public let position: GeoCoordinateType
    public let line: ElementReferenceType?
    public let stopName: String?
    public let travelTime: DurationType?
}
