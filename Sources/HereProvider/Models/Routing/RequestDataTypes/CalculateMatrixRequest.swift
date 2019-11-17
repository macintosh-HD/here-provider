import Vapor

public struct CalculateMatrixRequest: Content {
    public let appId: String
    public let appCode: String
    public let start: WaypointParameterType
    public let destination: WaypointParameterType
    public let mode: [RoutingModeType]
    public let searchRange: Int
    public let avoidAreas: [GeoBoundingBoxType]
    public let avoidLinks: [LinkIdType]
    public let avoidTurns: [TurnType]
    public let excludeCountry: [CountryCodeType]
    public let departure: Date
    public let matrixAttributes: [MatrixRouteAttributeType]
    public let summaryAttributes: [MatrixRouteSummaryAttributeType]
    public let truckType: TruckType
    public let trailersCount: Int = 0
    public let shippedHazardousGoods: [HazardousGoodTypeType]
    public let limitedWeight: Int
    public let weigthPerAxle: Int
    public let height: Int
    public let width: Int
    public let length: Int
    public let tunnelCategory: String
    public let speedProfile: SpeedProfileType
}

public enum MatrixRouteAttributeType: String, Content {
    case indices = "ix"
    case summary = "su"
}

public enum MatrixRouteSummaryAttributeType: String, Content {
    case traveltime = "tt"
    case costfactor = "cf"
    case distance = "di"
    case routeId = "ri"
}
