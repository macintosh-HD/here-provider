import Vapor

public enum IncidentTypeType: String, Content {
    case accident, congestion, roadworks, closure, flow, other
}

public enum LineStyleType: String, Content {
    case solid, dotted, dash
}

public enum RouteLinkFlagType: String, Content {
    case boatFerry, HOVLane, dirtRoad, motorway, noThroughRoad, park, railFerry, privateRoad, tollroad, tunnel, builUpArea
}

public enum PublicTransportFlagType: String, Content {
    case containsTimeEstimate
}

public enum RouteNoteTypeType: String, Content {
    case info, warning, restriction, violation, traffic
}

public enum RouteNoteCodeType: String, Content {
    case copyright, routingOptionViolated, passingPlace, roadNameChanged, sharpCurveAhead, linkFeatureAhead, timeDependentRestriction, previousIntersection, nextIntersection, adminDivisionChange, countryChange, gateAccess, privateRoad, tollBooth, tollRoad, unpavedRoad, restrictedTurn, difficultTurn, truckRestriction, zoneRestriction, seasonalClosures, congestion, roadworks, accident, closure, trafficFlow
}

public enum HazardousGoodTypeType: String, Content {
    case explosive, gas, flammable, combustible, organic, poison, radiActive, corrosive, poisonousInhalation, harmfulToWater, other, allHazardousGoods
}

public enum TruckRestrictionPenaltyType: String, Content {
    case strict, soft
}

public enum PublicTransportActionType: String, Content {
    case enter, change, leave
}

public enum PublicTransportTypeType: String, Content {
    case busPublic, busTouristic, busIntercity, busExpress, railMetro, railMetroRegional, railLight, railRegional, trainRegional, trainIntercity, trainHighSpeed, monoRail, aerial, inclined, water, privateService
}

public enum PublicTransportLinkFlagType: String, Content {
    case barrierFree
}

public enum ResourceTypeType: String, Content {
    case junctionView, signAsReal, directionArrow, advertising, vendorIcon, vendorLogo, routeTemplate
}

public enum DirectionType: String, Content {
    case  forward, bearRight, lightRight, right, hardRight, uTurnRight, uTurnLeft, hardLeft,left, lightLeft, bearLeft
}

/// SideOfStreetType already defined

public enum WaypointParameterTypeType: String, Content {
    case stopOver, passThrough
}

public enum PrivateTransportActionType: String, Content {
    case depart, arrive, leftUTurn,sharpLeftTurn, leftTurn, `continue`, slightRightTurn, rightTurn,sharpRightTurn, rightUTurn, ferry, leftExit, rightExit, leftRamp, rightRamp, leftFork, middleFork, rightFork, leftMerge, rightMerge, nameChange, leftRoundaboutExit1, leftRoundaboutExit2, leftRoundaboutExit3, leftRoundaboutExit4, leftRoundaboutExit5, leftRoundaboutExit6, leftRoundaboutExit7, leftRoundaboutExit8, leftRoundaboutExit9, leftRoundaboutExit10, leftRoundaboutExit11, leftRoundaboutExit12, rightRoundaboutExit1, rightRoundaboutExit2, rightRoundaboutExit3, rightRoundaboutExit4, rightRoundaboutExit5, rightRoundaboutExit6, rightRoundaboutExit7, rightRoundaboutExit8, rightRoundaboutExit9, rightRoundaboutExit10, rightRoundaboutExit11, rightRoundaboutExit12
}

public enum ShapeQualityType: String, Content {
    case exact, coarse
}

public enum SourceSupplierNoteTypeType: String, Content {
    case ticketPurchase, disclaimer
}

public enum RoutingZoneTypeType: String, Content {
    case vignette, congestionPrcing, adminClass, environmental
}

public enum TurnType: String, Content {
    case difficult
}

public enum TimeDependentRestrictionTypeType: String, Content {
    case turnRestriction, closure
}

public enum TruckAxleGroupType: String, Content {
    case single, tandem
}
