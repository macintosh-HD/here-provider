import Vapor

public protocol WaypointParameterType: Content, CustomStringConvertible {}

// MARK: GeoWaypointParameterType
public struct GeoWaypointParameterType: WaypointParameterType, Content {
    public let geo: GeoWaypointParameterComponentType?
    public let type: GeoWaypointParameterComponentTypeType?
    public let stopOverDuration: DurationType?
    public let position: GeoCoordinateType
    public let transitRadius: TransiRadiusType?
    public let userLabel: UserLabelType?
    public let heading: HeadingType?
    
    public init(geo: GeoWaypointParameterComponentType? = nil, type: GeoWaypointParameterComponentTypeType? = nil, stopOverDuration: DurationType? = nil, position: GeoCoordinateType, transitRadius: TransiRadiusType? = nil, userLabel: UserLabelType? = nil, heading: HeadingType? = nil) {
        self.geo = geo
        self.type = type
        self.stopOverDuration = stopOverDuration
        self.position = position
        self.transitRadius = transitRadius
        self.userLabel = userLabel
        self.heading = heading
    }
    
    public enum GeoWaypointParameterComponentType: String, Content {
        case geo = "geo!"
    }
    
    public enum GeoWaypointParameterComponentTypeType: String, Content {
        case stopOver
        case passThrough
    }
    
    public struct TransiRadiusType: Content {
        let radius: Int?
    }
    
    public struct UserLabelType: Content {
        let label: String?
    }
}

extension GeoWaypointParameterType: CustomStringConvertible {
    public var description: String {
        var output = ""
        
        if let geo = self.geo, geo == .geo {
            output += geo.rawValue
        }
        
        if let type = self.type {
            output += type.rawValue
            
            if let duration = self.stopOverDuration {
                output += ",\(duration)"
            }
            
            output += "!"
        }
        
        output += position.description
        
        if let transitRadius = self.transitRadius {
            output += ";"
            
            if let radius = transitRadius.radius {
                output += "\(radius)"
            }
            
            if let userLabel = self.userLabel {
                output += ";"
                
                if let label = userLabel.label {
                    output += label
                }
                
                if let heading = self.heading {
                    output += ";\(heading)"
                }
            }
        }
        
        return output
    }
}

// MARK: NavigationWaypointParameterType
public struct NavigationWaypointParameterTypeWithStreetPosition: WaypointParameterType, Content {
    public let street: StreetParameterType = .street
    public let type: NavigationWaypointParameterTypeType?
    public let stopOverDuration: DurationType?
    public let displayPosition: GeoCoordinateType?
    public let userLabel: String?
    public let streetPosition: StreetPositionType
    public let heading: HeadingType?
    public let transitRadius: Int?
    
    public enum StreetParameterType: String, Content {
        case street = "street!"
    }
    
    public enum NavigationWaypointParameterTypeType: String, Content {
        case stopOver, passThrough
    }
    
    public struct StreetPositionType: Content, CustomStringConvertible {
        public let position: GeoCoordinateType
        public let name: String?
        
        public var description: String {
            var output = "\(position)"
            
            if let name = name {
                output += ";\(name)"
            }
            
            return output
        }
    }
}

extension NavigationWaypointParameterTypeWithStreetPosition: CustomStringConvertible {
    public var description: String {
        var output = ""
        
        output += self.street.rawValue
        
        if let type = self.type {
            output += type.rawValue
            
            if let duration = self.stopOverDuration {
                output += ",\(duration)"
            }
            
            output += "!"
        }
        
        if let displayPosition = self.displayPosition {
            output += displayPosition.description
            
            if let userLabel = self.userLabel {
                output += ",\(userLabel)"
            }
        }
        
        output += self.streetPosition.description
        
        if let heading = self.heading {
            output += "!\(heading)"
            
            if let transitRadius = self.transitRadius {
                output += "!\(transitRadius)"
            }
        }
        
        return output
    }
}

// MARK: Navigation
public struct NavigationWaypointParameterTypeWithLinkPosition: WaypointParameterType, Content {
    public let link: LinkParameterType = .link
    public let type: NavigationWaypointParameterTypeType?
    public let stopOverDuration: DurationType?
    public let displayPosition: GeoCoordinateType?
    public let userLabel: String?
    public let linkPosition: LinkPositionType
    
    public enum LinkParameterType: String, Content {
        case link
    }
    
    public enum NavigationWaypointParameterTypeType: String, Content {
        case stopOver, passThrough
    }
    
    public struct LinkPositionType: Content, CustomStringConvertible {
        public let linkId: LinkIdType
        public let spot: Double?
        
        public var description: String {
            var output = linkId.description
            
            if let spot = spot {
                output += ",\(spot)"
            }
            
            return output
        }
    }
}

extension NavigationWaypointParameterTypeWithLinkPosition: CustomStringConvertible {
    public var description: String {
        var output = self.link.rawValue
        
        if let type = self.type {
            output += "!\(type.rawValue)"
            
            if let duration = self.stopOverDuration {
                output += duration.description
            }
            
            output += "!"
        }
        
        if self.displayPosition != nil || self.userLabel != nil {
            output += "!"
            
            if let displayPosition = self.displayPosition {
                output += displayPosition.description
            }
            
            if let userLabel = self.userLabel {
                output += ";\(userLabel)"
            }
        }
        
        output += self.linkPosition.description
        
        return output
    }
}
