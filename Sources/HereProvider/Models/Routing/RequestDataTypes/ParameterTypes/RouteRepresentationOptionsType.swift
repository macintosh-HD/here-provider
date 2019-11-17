import Vapor

// MARK: RouteRepresentationModeType
public enum RouteRepresentationModeType: String, Content {
    case overview, display, dargNDrop, navigation, linkPaging, turnByTurn
}

// MARK: RouteAttributeType
public enum RouteAttributeType: String, Content {
    case waypoints = "wp"
    case summary = "sm"
    case summaryByCountry = "sc"
    case shape = "sh"
    case boundingBox = "bb"
    case legs = "lg"
    case notes = "no"
    case lines = "li"
    case tickets = "tx"
    case labels = "la"
    case routeId = "ri"
    case groups = "gr"
    case incidents = "ic"
    case zones = "zo"
}

// MARK: RouteLegAttributes
public enum RouteLegAttributeType: String, Content {
    case waypoint = "wp"
    case maneuvers = "mn"
    case links = "li"
    case length = "le"
    case travelTime = "tt"
    case shape = "sh"
    case indices = "ix"
    case boundingBox = "bb"
    case baseTime = "bt"
    case trafficTime = "tm"
    case summary = "sm"
}

// MARK: ManeuverAttributeType
public enum ManeuverAttributeType: String, Content {
    case position = "po"
    case shape = "sh"
    case travelTime = "tt"
    case length = "le"
    case time = "ti"
    case link = "li"
    case publicTransportLine = "pt"
    case publicTransportTickets = "tx"
    case platform = "pl"
    case roadName = "rn"
    case nextRoadName = "nr"
    case roadNumber = "ru"
    case nextRoadNumber = "nu"
    case signPost = "sp"
    case notes = "no"
    case action = "ac"
    case direction = "di"
    case nextManeuver = "nm"
    case freewayExit = "fe"
    case freewayJunction = "fj"
    case baseTime = "bt"
    case trafficTime = "tm"
    case indices = "ix"
    case boundingBox = "bb"
    case roadShield = "rs"
    case startAngle = "sa"
    case waitTime = "wt"
    case shapeQuality = "sq"
    case publicTransportDelays = "td"
}

// MARK: RouteLinkAttributeType
public enum RouteLinkAttributeType: String, Content {
    case shape = "sh"
    case length = "le"
    case speedLimit = "sl"
    case dynamicSpeedInfo = "ds"
    case truckRestrictions = "tr"
    case flags = "fl"
    case roadNumber = "rn"
    case roadName = "ro"
    case timezone = "tz"
    case nextLink = "nl"
    case publicTransportLine = "pt"
    case remainTime = "rt"
    case remainDistance = "rd"
    case maneuver = "ma"
    case functionalClass = "fc"
    case nextStopName = "ns"
    case indices = "ix"
    case consumption = "cn"
    case timeDependentRestriction = "ti"
}

// MARK: PublicTransportLineAttributeType
public enum PublicTransportLineAttributeType: String, Content {
    case foreground = "fg"
    case background = "bg"
    case lineStyle = "ls"
    case companyShortName = "cs"
    case companyLogo = "cl"
    case flags = "fl"
    case typeName = "tn"
    case lineId = "li"
    case companyId = "ci"
    case systemId = "si"
    case stops = "st"
}

public enum InstructionFormatType: String, Content {
    case text, html
}
