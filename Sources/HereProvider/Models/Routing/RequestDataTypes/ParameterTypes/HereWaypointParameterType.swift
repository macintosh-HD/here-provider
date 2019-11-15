import Vapor

// MARK: GeoWaypointParameterType
public struct GeoWaypointParameterType {
    public let geo: GeoWaypointParameterComponentType?
    public let type: GeoWaypointParameterComponentTypeType?
    public let stopOverDuration: DurationType?
    public let position: GeoCoordinateType
    public let transitRadius: TransiRadiusType?
    public let userLabel: UserLabelType?
    public let heading: HeadingType?
    
    public enum GeoWaypointParameterComponentType: String, Content {
        case geo = "geo!"
    }
    
    public enum GeoWaypointParameterComponentTypeType: String, Content {
        case stopOver
        case passThrough
    }
    
    public enum TransiRadiusType: Content {
        case transitRadius(Int)
        case empty
    }
    
    public enum UserLabelType: Content {
        case userLabel(String)
        case empty
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
            
            switch transitRadius {
            case .transitRadius(radius):
                output += "\(radius)"
            default:
                continue
            }
            
            if let userLabel = self.userLabel {
                output += ";"
                
                switch userLabel {
                case .userLabel(label):
                    output += label
                default:
                    continue
                }
                
                if let heading = self.heading {
                    output += ";\(heading)"
                }
            }
        }
    }
}

// MARK: NavigationWaypointParameterType
public struct NavigationWaypointParameterTypeWithStreetPosition {
    public let street: StreetParameterType = .street
    public let type: NavigationWaypointParameterTypeType?
    public let stopOverDuration: DurationType?
    public let displayPosition: GeoCoordinateType?
    public let userLabel: String?
    public let streetPosition: StreetPositionType
    public let heading: HeadingType?
    public let transitRadius: Int?
    
    public enum StreetParameterType: String {
        case street = "street!"
    }
    
    public enum NavigationWaypointParameterTypeType: String {
        case stopOver, passThrough
    }
    
    public struct StreetPositionType: CustomStringConvertible {
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
public struct NavigationWaypointParameterTypeWithLinkPosition {
    public let link: LinkParameterType = .link
    public let type: NavigationWaypointParameterTypeType?
    public let stopOverDuration: DurationType?
    public let displayPosition: GeoCoordinateType?
    public let userLabel: String?
    public let linkPosition: LinkPositionType
    
    public enum LinkParameterType: String {
        case link
    }
    
    public enum NavigationWaypointParameterTypeType: String {
        case stopOver, passThrough
    }
    
    public struct LinkPositionType: CustomStringConvertible {
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