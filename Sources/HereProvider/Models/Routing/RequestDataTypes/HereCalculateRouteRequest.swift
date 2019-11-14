import Vapor

public class RouteCalculationRequest: Content {
    public let waypoints: [Waypoint]
    public let mode: RoutingModeType
    public let requestID: String?
    public let avoidAreas: [GeoBoundingBoxType] = []
    public let avoidLinks: String?
    public let avoidSeasonalClosures: Bool = true
    public let avoidTurns: [TurnType] = []
    public let allowedZones: UInt?
    public let excludeZone: UInt?
    public let excludeZoneType: [RoutingZoneTypeType] = []
    public let excludeCountry: [CountryCodeType] = []
    public let departure: Date?
    public let arrival: Date?
    public let alternatives: Int?
    public let metricSystem: SystemOfMeasurementType?
    public let viewBounds: GeoBoundingBoxType?
    public let resolution: ResolutionType?
    public let instructionFormat: InstructionFormatType?
    public let language: [Langugage] = []
    public let jsonAttributes: Int
    public let jsonCallback: String?
    public let representation: [RouteRepresentationModeType] = []
    public let routeAttributes: [RouteAttributeType] = []
    public let legAttributes: [RouteLegAttributeType] = []
    public let maneuverAttributes: [ManeuverAttributeType] = []
    public let linkAttributes: [RouteLinkAttributeType] = []
    public let lineAttributes: [PublicTransportLineAttributeType] = []
    public let generalizationTolerances: [Double] = []
    public let vehicleType: VehicleType?
    public let licensePlate: LicensePlate?
    public let maxNumberOfChanges: Int?
    public let avoidTransportType: [PublicTransportTypeType] = []
    public let walkTimeMultiplier: Double?
    public let walkSpeed: SpeedType?
    public let walkRadius: Int?
    public let combineChange: Bool?
    public let truckType: TruckType?
    public let trailersCount: Int?
    public let axleCount: Int?
    public let shippedHazardousGoods: [HazardousGoodTypeType] = []
    public let limitedWeight: Int?
    public let weightPerAxle: Int?
    public let weightsPerAxleGroup: (TruckAxleGroupType, Int)?
    public let height: Int?
    public let width: Int?
    public let length: Int?
    public let tunnelCategory: TunnelCategory?
    public let truckRestrictionPenalty: TruckRestrictionPenalytyType?
    public let returnElevation: Bool?
    public let consumptionModel: ConsumptionModelType?
    public let customConsumptionDetails: String?
    public let speedProfile: SpeedProfileType?
}
