import Vapor

public struct VehicleType: CustomStringConvertible {
    public let engineType: EngineType
    public let averageConsumption: Int
    
    public var description: String {
        var output = "\(engineType.rawValue),\(averageConsumption)"
    }
}

public enum EngineType: String, Content {
    case diesel, gasoline, electric
}
