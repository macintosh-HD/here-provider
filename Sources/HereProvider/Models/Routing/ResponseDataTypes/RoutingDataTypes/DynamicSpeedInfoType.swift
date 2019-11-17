import Vapor

public struct DynamicSpeedInfoType: Content {
    public let trafficSpeed: SpeedType
    public let trafficTime: DurationType
    public let baseSpeed: SpeedType
    public let baseTime: DurationType
    public let jamFactor: Double
}
