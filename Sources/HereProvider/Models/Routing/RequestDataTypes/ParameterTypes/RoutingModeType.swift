import Vapor

public struct RoutingModeType: CustomStringConvertible, Content {
    public let type: RoutingTypeType
    public let transportMode: TransportModeType?
    public let trafficMode: TrafficModeType?
    public let routeFeature: FeatureType?
    
    public var description: String {
        var output = "\(type.rawValue);"
        
        if let transportMode = transportMode {
            output += transportMode.rawValue
        }
        output += ";"
        
        if let trafficMode = trafficMode {
            output += "traffic:\(trafficMode.rawValue)"
        }
        output += ";"
        
        if let routeFeature = routeFeature {
            output += "\(routeFeature.0):\(routeFeature.1)"
        }
    }
}

public enum RoutingTypeType: String, Content {
    case fastest, shortest, balanced
}

public enum TrafficModeType: String, Content {
    case enabled, disabled, `default`
}

public enum TransportModeType: String, Content {
    case car, carHOV, pedestrian, publicTransport, publicTransportTimeTable, truck, bicycle
}

public struct FeatureType: Content {
    public let feature: RouteFeatureType
    public let weight: RouteFeatureWeightType = .normal
}

public enum RouteFeatureType: String, Content {
    case tollroad, motorway, boatFerry, railFerry, tunnel, dirtRoad, park
}

public enum RouteFeatureWeightType: Int, Content {
    case strictExclude = -3
    case softExclude = -2
    case avoid = -1
    case normal = 0
}
