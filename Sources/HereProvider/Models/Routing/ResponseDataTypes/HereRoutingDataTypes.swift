import Vapor

public typealias DurationType = TimeInterval

// MARK: Enumeration Types
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

// MARK: Link Information
public protocol RouteLinkType: Content {
    public let linkId: LinkIdType
    public let shape: GeoPolylineType
    public let firstPoint: Int
    public let lastPoint: Int
    public let length: DistanceType
    public let remainDistance: DistanceType
    public let remainTime: DurationType
    public let nextLink: LinkIdType
    public let maneuver: ElementReferenceType
    public let timeDependentRestrictionRef: Int
}

public struct PrivateTransportLinkType: RouteLinkType, Content {
    public let speedLimit: SpeedType
    public let dynamicSpeedInfo: DynamicSpeedInfoType
    public let flags: RouteLinkFlagType
    public let functionalClass: FunctionalClassType
    public let roadNumber: String
    public let timezone: String
    public let truckRestrictions: TruckRestrictionsType
    public let roadName: String
    public let consumption: Double
}

public struct PublicTransportLinkType: RouteLinkType, Content {
    public let nextStopName: String
    public let line: ElementReferenceType
}

public struct PublicTransportLineType: Content {
    public let lineName: String
    public let lineForeground: String
    public let lineBackground: String
    public let lineStyle: LineStyleType
    public let companyName: String
    public let companyShortName: String
    public let companyLogo: ExternalResourceType
    public let destination: String
    public let flags: PublicTransportLinkFlagType
    public let type: PublicTransportTypeType
    public let typeName: String
    public let stops: [PublicTransportStopType]
}

public struct PublicTransportStopType: Content {
    public let id: ElementReferenceType
    public let position: GeoCoordinateType
    public let line: ElementReferenceType
    public let stopName: String
    public let travelTime: DurationType
}

public struct DynamicSpeedInfoType: Content {
    public let trafficSpeed: SpeedType
    public let trafficTime: DurationType
    public let baseSpeed: SpeedType
    public let baseTime: DurationType
    public let jamFactor: Double
}

public struct TruckRestrictionsType: Content {
    public let trailerForbidden: Bool
    public let forbiddenHazardousGoods: HazardousGoodTypeType
    public let limitedWeight: WeightType
    public let weightPerAxle: WeightType
    public let height: Double
    public let width: Double
    public let length: Double
    public let tunnelCategory: String
    public let conditionalRestriction: [ConditionalTruckRestrictionType]
}

public struct ConditionalTruckRestrictionType: Content {
    public let limitedWeight: WeightType
    public let weightPerAxle: WeightType
    public let height: Double
    public let width: Double
    public let length: Double
    public let accessForbidden: Bool
    public let truckProfile: TruckRestrictionConditionType
    public let timeDependent: Bool
    public let validityPeriod: RecurringTimeIntervalsCombinationType
}

public struct TruckRestrictionConditionType: Content {
    public let truckType: TruckTypeType
    public let trailersCount: UInt8
    public let hazardousGood: HazardousGoodTypeType
    public let tunnelCategory: String
    public let axleCount: UnsignedNumericRange
}

// MARK: Vehicle information
public protocol ManeuverType: Content {
    public let id: ElementReferenceType
    public let position: GeoCoordianteType
    public let instruction: String
    public let travelTime: DurationType
    public let length: DistanceType
    public let shape: GeoPolylineType
    public let firstPoint: Int
    public let lastPoint: Int
    public let time: Date
    public let note: RouteNoteType
    public let nextManeuver: ElementReferenceType
    public let toLink: LinkIdType
    public let boundingBox: GeoBoundingBoxType
    public let shapeQuality: ShapeQualityType
}

public struct PrivateTransportManeuverType: ManeuverType, Content {
    public let direction: DirectionType
    public let action: PrivateTransportActionType
    public let roadName: String
    public let signPost: String
    public let nextRoadName: String
    public let roadNumber: String
    public let nextRoadNumber: String
    public let freewayExit: String
    public let freewayJunction: String
    public let trafficTime: DurationType
    public let baseTime: DurationType
    public let roadShield: RoadShieldType
    public let startAngle: Int
}

public struct PublicTransportManeuverType: ManeuverType, Content {
    public let action: PublicTransportActionType
    public let stopName: String
    public let arrivalPlatform: String
    public let departurePlatform: String
    public let line: ElementReferenceType
    public let toLine: ElementReferenceType
    public let accessPointName: String
    public let nextRoadName: String
    public let waitTime: DurationType
    public let timeEstimatePrecision: DurationType
    public let ticket: DurationType
    public let departureDelay: DurationType
    public let arrivalDelay: DurationType
}

// MARK: Route information
public struct RouteResponseMetaInfoType: Content {
    public let requestId: String
    public let timestamp: String
    public let mapVersion: String
    public let availableMapVersion: String
    public let moduleVersion: String
    public let interfaceVersion: String
}

public struct RouteType: Content {
    public let routeId: String
    public let waypoint: [WaypointType]
    public let mode: RoutingModeType
    public let shape: GeoPolylineType
    public let boundingBox: GeoBoundingBoxType
    public let leg: [RouteLegType]
    public let publicTransportLine: [PublicTransportLineType]
    public let publicTransportTickets: [PublicTransportTicketsType]
    public let note: [RouteNoteType]
    public let summary: RouteSummaryType
    public let summaryByCountry: [RouteSummaryByCountryType]
    public let generalizations: [String]
    public let maneuverGroup: [ManeuverGroupType]
    public let incident: IncidentType
    public let label: String
    public let zone: [RoutingZoneType]
    public let timeDependentRestriction: [TimeDependentRestrictionType]
}

public struct RouteLegType: Content {
    public let start: WaypointType
    public let end: WaypointType
    public let length: DistanceType
    public let travelTime: DurationType
    public let maneuver: [ManeuverType]
    public let link: [RouteLinkType]
    public let boundingBox: GeoBoundingBoxType
    public let shape: GeoPolylineType
    public let firstPoint: Int
    public let lastPoint: Int
    public let trafficTime: DurationType
    public let baseTime: DurationType
    public let summary: RouteSummaryType
    public let subLegSummary: [RouteSummaryType]
}

public struct WaypointType: Content {
    public let linkId: LinkIdType
    public let mappedPosition: GeoCoordinateType
    public let originalPosition: GeoCoordinateType
    public let type: WaypointParameterTypeType
    public let spot: Double
    public let sideOfStreet: SideOfStreetType
    public let mappedRoadName: String
    public let label: String
    public let userLabel: String
    public let shapeIndex: Int
}

public struct RouteSummaryType: Content {
    public let distance: DistanceType
    public let trafficTime: DurationType
    public let baseTime: DurationType?
    public let flags: [RouteLinkFlagType]?
    public let travelTime: DurationType?
    public let text: String?
    public let Co2Emission: Double?
    public let costFactor: Int?
    public let routeId: String?
}

public struct RouteSummaryByCountryType: RouteSummaryType, Content {
    public let country: CountryCodeType
    public let tollRoadDistance: DistanceType
}

public struct RoadShieldType: Content {
    public let region: String
    public let category: String
    public let label: String
}

public struct RouteNoteType: Content {
    public let type: RouteNoteTypeType
    public let code: RouteNoteCodeType
    public let text: String
    public let additionalData: [KeyValuePairType<String,String>]
    public let countryChangeDetails: CountryChangeDetailsType?
    public let zoneIds: [UInt]
}

public struct PublicTransportTicketsType: Content {
    public let id: String
    public let publicTransportTicket: PublicTransportTicketType
}

public struct PublicTransportTicketType: Content {
    public let id: String
    public let ticketName: String
    public let currency: String
    public let price: Double
}

// MARK: Generic information
public struct SourceAttributionType: Content {
    public let attribution: String
    public let supplier: SourceSupplierType
}

public struct SourceSupplierType: Content {
    public let title: String
    public let href: String
    public let note: SourceSupplierNoteType
}

public struct SourceSupplierNoteType: Content {
    public let type: SourceSupplierNoteTypeType
    public let text: String
    public let href: String
    public let hrefText: String
}

// MARK: CountryChangeDetailsType
public struct CountryChangeDetailsType: Content {
    public let toCountry: CountryCodeType
}

// MARK: GeneralizationType
public struct GeneralizationType: Content {
    public let tolerance: Double
    public let index: Int
}

// MARK: IsolineType
public struct IsolineType: Content {
    public let range: String
    public let component: [IsolineComponentType]
    public let connection: [IsolineConnectionType]
}

public struct IsolineComponentType: Content {
    public let id: ElementReferenceType
    public let shape: GeoPolylineType
}

public struct IsolineConnectionType: Content {
    public let fromId: ElementReferenceType
    public let toId: ElementReferenceType
    public let shape: GeoPolylineType
}

// MARK: ManeuverGroupType
public struct ManeuverGroupType: Content {
    public let firstManeuver: ElementReferenceType
    public let lastManeuver: ElementReferenceType
    public let mode: RoutingModeType
    public let summaryDescription: String
    public let arrivalDescription: String
    public let waitDescription: String
    public let publicTransportType: PublicTransportTypeType
}

// MARK: PublicTransportRouteSummaryType
public struct PublicTransportRouteSummaryType: RouteSummaryType, Content {
    public let departure: Date
    public let publicTransportFlags: PublicTransportFlagType
}

// MARK: RouteMatrixEntryType
public struct RouteMatrixEntryType: Content {
    public let startIndex: Int
    public let destinationIndex: Int
    public let summary: RouteSummaryType
    public let status: RouteStatusType
}

// MARK: RouteShapeReferenceType
public struct RouteShapeReferenceType: Content {
    public let firstPoint: Int
    public let lastPoint: Int
}

// MARK: RoutingZoneType
public struct RoutingZoneType: Content {
    public let id: UInt
    public let name: String
    public let type: RoutingZoneTypeType
    public let shapeIndices: [RouteShapeReferenceType]
    public let restriction: [VehicleRestrictionType]
}

// MARK: TimeDependentRestrictionType
public struct TimeDependentRestrictionType: Content {
    public let validityPeriod: RecurringTimeIntervalsCombinationType
    public let type: TimeDependentRestrictionTypeType
}

// MARK: VehicleRestrictionType
public struct VehicleRestrictionType: Content {
    public let validityPeriod: RecurringTimeIntervalsCombinationType
    public let licensePlatePattern: LicensePlatePatternType
}

// MARK: InvidentType
public struct IncidentType: Content {
    public let validityPeriod: RecurringTimeIntervalsCombinationType
    public let text: String
    public let type: IncidentTypeType
    public let criticality: Int
    public let firstPoint: Int
    public let lastPoint: Int
}
