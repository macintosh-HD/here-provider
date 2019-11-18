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

public enum TruckTypeType: String, Content {
    case truck, tractorTruck
}

public enum LicensePlate{
    case lastCharacter(Int)
}

extension LicensePlate: Content {
    enum CodingKeys: String, CodingKey {
        case lastCharacter
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        if let lastCharacterValue = try container.decodeIfPresent(Int.self, forKey: .lastCharacter) {
            self = .lastCharacter(lastCharacterValue)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = try encoder.container(keyedBy: CodingKeys.self)
        
        switch self {
        case .lastCharacter(let value):
            try container.encode(value, forKey: .lastCharacter)
        }
    }
}

public enum TunnelCategory: String, Content {
    case B, C, D, E
}
