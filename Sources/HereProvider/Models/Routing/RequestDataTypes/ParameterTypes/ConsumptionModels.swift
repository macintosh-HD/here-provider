import Vapor

public enum ConsumptionModelType: String, Content {
    case `default`, standard
}

public protocol ConsumptionModelDetailType: Content, CustomStringConvertible {}

public struct StandardConsumptionModel: ConsumptionModelDetailType, Content, CustomStringConvertible {
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
        output += speed.reduce("") { (res, value) in
            res + "\(value),"
        }
        output.removeLast()
        
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
        
        if let deceleration = deceleration {
            output += ";deceleration,\(deceleration)"
        }
        
        return output
    }
}
