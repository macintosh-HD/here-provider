import Vapor

public struct CalculateIsolineRequest: Content {
    public let appId: String
    public let appCode: String
    public let requestId: String
    public let start: WaypointParameterType
    public let destination: WaypointParameterType
    public let range: String
    public let rangeType: RangeType
    public let mode: [RoutingModeType]
    public let departure: Date
    public let arrival: Date
    public let singleComponent: Bool
    public let maxPoints: Int
    public let quality: Int = 1
    public let jsonAttributes: Int
    public let jsonCallback: String
    public let truckType: TruckType
    public let trailersCount: Int = 0
    public let shippedHazardousGoods: [HazardousGoodTypeType]
    public let limitedWeight: Int
    public let weightPerAxle: Int
    public let height: Int
    public let width: Int
    public let length: Int
    public let tunnelCategory: String
    public let consumptionModel: ConsumptionModel
    public let customConsumptionDetails: String
    public let speedProfile: SpeedProfileType
}

