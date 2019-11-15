import Vapor

public enum ConsumptionModelType {
    case `default`, standard
}

public protocol ConsomptionModelDetailType {}

public struct StandardConsumptionModel: ConsomptionModelDetailType, CustomStringConvertible {
    public let speed: [Double]
    public let ascent: Double
    public let descent: Double
    public let timePenalty: Double?
    public let auxiliaryConsumption: Double?
    public let acceleration: Double?
    public let deceleration: Double?
    
    public var description: String {
        var output = ""
        
        output += "speed"
        speed.map { value in
            output += ",\(value)"
        }
        
        output += ";ascent,\(ascent)"
        output += ";descent,\(descent)"
        
        if let timePenalty = timePenalty {
            output += ";timePenalty,\(timePenalty)"
        }
        
        if let auxiliaryConsumption = auxiliaryConsumption {
            output += ";auxiliaryConsumption,\(auxiliaryConsumption)"
        }
        
        if let acceleration = acceleration {
            output += ";acceleration,\(acceleration)"
        }
        
        if let desceleration = deceleration {
            output += ";deceleration,\(deceleration)"
        }
    }
}
