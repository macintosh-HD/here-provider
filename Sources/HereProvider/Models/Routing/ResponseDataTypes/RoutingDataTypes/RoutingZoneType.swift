import Vapor

public struct RoutingZoneType: Content {
    public let id: UInt
    public let name: String
    public let type: RoutingZoneTypeType
    public let shapeIndices: [RouteShapeReferenceType]
    public let restriction: [VehicleRestrictionType]
}
