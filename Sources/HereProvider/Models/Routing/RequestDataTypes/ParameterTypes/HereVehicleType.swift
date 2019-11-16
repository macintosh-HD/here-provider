import Vapor

public struct VehicleType: Content, CustomStringConvertible {
    public let engineType: EngineType
    public let averageConsumption: Int
    
    public var description: String {
        var output = "\(engineType.rawValue),\(averageConsumption)"
    }
}

public enum EngineType: String, Content {
    case diesel, gasoline, electric
}

public enum TruckType: String, Content {
    case truck, tractorTruck
}

public enum LicensePlate: Content {
    case lastCharacter(Int)
}

public enum TunnelCategory: String, Content {
    case B, C, D, E
}
