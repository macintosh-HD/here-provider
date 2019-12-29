import Vapor

public struct VehicleType: Content, CustomStringConvertible {
    public let engineType: EngineType
    public let averageConsumption: Int
    
    public init(engineType: EngineType, averageConsumption: Int) {
        self.engineType = engineType
        self.averageConsumption = averageConsumption
    }
    
    public var description: String {
        return "\(engineType.rawValue),\(averageConsumption)"
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
        
        guard let lastCharacterValue = try container.decodeIfPresent(Int.self, forKey: .lastCharacter) else {
            let context = DecodingError.Context(codingPath: [CodingKeys.lastCharacter], debugDescription: "No last character found for license plate.")
            throw DecodingError.valueNotFound(Int.self, context)
        }
        
        self = .lastCharacter(lastCharacterValue)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        switch self {
        case .lastCharacter(let value):
            try container.encode(value, forKey: .lastCharacter)
        }
    }
}

public enum TunnelCategory: String, Content {
    case B, C, D, E
}
