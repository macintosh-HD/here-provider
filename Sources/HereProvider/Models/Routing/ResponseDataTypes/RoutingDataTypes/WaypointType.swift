import Vapor

public struct WaypointType: Content {
    public let linkId: LinkIdType
    public let mappedPosition: GeoCoordinateType
    public let originalPosition: GeoCoordinateType
    public let type: WaypointParameterTypeType
    public let spot: Double
    public let sideOfStreet: SideOfStreetType
    public let mappedRoadName: String
    public let label: String
    public let userLabel: String?
    public let shapeIndex: Int
}
