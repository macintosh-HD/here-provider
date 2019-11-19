import Vapor

public struct PrivateTransportManeuverType: ManeuverType {
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
