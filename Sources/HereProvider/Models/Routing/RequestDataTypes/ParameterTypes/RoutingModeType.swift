import Vapor

public struct RoutingModeType: CustomStringConvertible, Content {
    public let type: RoutingTypeType
    public let transportMode: TransportModeType?
    public let trafficMode: TrafficModeType?
    public let routeFeature: FeatureType?
    
    public init(type: RoutingTypeType, transportMode: TransportModeType? = nil, trafficMode: TrafficModeType? = nil, routeFeature: FeatureType? = nil) {
        self.type = type
        self.transportMode = transportMode
        self.trafficMode = trafficMode
        self.routeFeature = routeFeature
    }
    
    public var description: String {
        var output = "\(type.rawValue);"
        
        if let transportMode = transportMode {
            output += "\(transportMode.rawValue);"
        }
        
        if let trafficMode = trafficMode {
            output += "traffic:\(trafficMode.rawValue);"
        }
        
        if let routeFeature = routeFeature {
            output += routeFeature.description
        }
        
        return output
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

public struct FeatureType: Content, CustomStringConvertible {
    public let feature: RouteFeatureType
    public let weight: RouteFeatureWeightType
    
    public init(feature: RouteFeatureType, weight: RouteFeatureWeightType = .normal) {
        self.feature = feature
        self.weight = weight
    }
    
    public var description: String {
        return "\(feature.rawValue):\(weight.rawValue)"
    }
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
