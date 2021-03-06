import Vapor

public struct CalculateIsolineRequest<T: WaypointParameterType>: Content {
    public let appId: String
    public let appCode: String
    public let requestId: String
    public let start: T
    public let destination: T
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
    public let truckType: TruckTypeType
    public let trailersCount: Int = 0
    public let shippedHazardousGoods: [HazardousGoodTypeType]
    public let limitedWeight: Int
    public let weightPerAxle: Int
    public let height: Int
    public let width: Int
    public let length: Int
    public let tunnelCategory: String
    public let consumptionModel: ConsumptionModelType
    public let customConsumptionDetails: String
    public let speedProfile: SpeedProfileType
}

public enum RangeType: String, Content {
    case distance, time, consumption
}
