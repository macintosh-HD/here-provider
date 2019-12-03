import Vapor

public struct RouteCalculationRequest<W: WaypointParameterType, C: ConsumptionModelDetailType>: Content {
    public let waypoints: [W]
    public let mode: RoutingModeType
    public let requestId: String?
    public let avoidAreas: [GeoBoundingBoxType]
    public let avoidLinks: [LinkIdType]
    public let avoidSeasonalClosures: Bool?
    public let avoidTurns: [TurnType]
    public let allowedZones: UInt?
    public let excludeZones: [UInt]
    public let excludeZoneType: [RoutingZoneTypeType]
    public let excludeCountry: [CountryCodeType]
    public let departure: Date?
    public let arrival: Date?
    public let alternatives: Int?
    public let metricSystem: SystemOfMeasurementType?
    public let viewBounds: GeoBoundingBoxType?
    public let resolution: ResoltionType?
    public let instructionFormat: InstructionFormatType?
    public let language: [LanguageCodeType]
    public let jsonAttributes: Int?
    public let jsonCallback: String?
    public let representation: [RouteRepresentationModeType]
    public let routeAttributes: [RouteAttributeType]
    public let legAttributes: [RouteLegAttributeType]
    public let maneuverAttributes: [ManeuverAttributeType]
    public let linkAttributes: [RouteLinkAttributeType]
    public let lineAttributes: [PublicTransportLineAttributeType]
    public let generalizationTolerances: [Double]
    public let vehicleType: VehicleType?
    public let licensePlate: LicensePlate?
    public let maxNumberOfChanges: Int?
    public let avoidTransportType: [PublicTransportTypeType]
    public let walkTimeMultiplier: Double?
    public let walkSpeed: SpeedType?
    public let walkRadius: Int?
    public let combineChange: Bool?
    public let truckType: TruckTypeType?
    public let trailersCount: Int?
    public let axleCount: Int?
    public let shippedHazardousGoods: [HazardousGoodTypeType]
    public let limitedWeight: Int?
    public let weightPerAxle: Int?
    public let weightsPerAxleGroup: [WeightPerAxleGroupType]
    public let height: Int?
    public let width: Int?
    public let length: Int?
    public let tunnelCategory: TunnelCategory?
    public let truckRestrictionPenalty: TruckRestrictionPenaltyType?
    public let returnElevation: Bool?
    public let consumptionModel: ConsumptionModelType?
    public let customConsumptionDetails: C?
    public let speedProfile: SpeedProfileType?
    
    public init(waypoints: [W], mode: RoutingModeType, requestId: String? = nil, avoidAreas: [GeoBoundingBoxType] = [], avoidLinks: [LinkIdType] = [], avoidSeasonalClosures: Bool? = nil, avoidTurns: [TurnType] = [], allowedZones: UInt? = nil, excludeZones: [UInt] = [], excludeZoneType: [RoutingZoneTypeType] = [], excludeCountry: [CountryCodeType] = [], departure: Date? = nil, arrival: Date? = nil, alternatives: Int? = nil, metricSystem: SystemOfMeasurementType? = nil, viewBounds: GeoBoundingBoxType? = nil, resolution: ResoltionType? = nil, instructionFormat: InstructionFormatType? = nil, language: [LanguageCodeType] = [], jsonAttributes: Int? = nil, jsonCallback: String? = nil, representation: [RouteRepresentationModeType] = [], routeAttributes: [RouteAttributeType] = [], legAttributes: [RouteLegAttributeType] = [], maneuverAttributes: [ManeuverAttributeType] = [], linkAttributes: [RouteLinkAttributeType] = [], lineAttributes: [PublicTransportLineAttributeType] = [], generalizationTolerances: [Double] = [], vehicleType: VehicleType? = nil, licensePlate: LicensePlate? = nil, maxNumberOfChanges: Int? = nil, avoidTransportType: [PublicTransportTypeType] = [], walkTimeMultiplier: Double? = nil, walkSpeed: SpeedType? = nil, walkRadius: Int? = nil, combineChange: Bool? = nil, truckType: TruckTypeType? = nil, trailersCount: Int? = nil, axleCount: Int? = nil, shippedHazardousGoods: [HazardousGoodTypeType] = [], limitedWeight: Int? = nil, weightPerAxle: Int? = nil, weightsPerAxleGroup: [WeightPerAxleGroupType] = [], height: Int? = nil, width: Int? = nil, length: Int? = nil, tunnelCategory: TunnelCategory? = nil, truckRestrictionPenalty: TruckRestrictionPenaltyType? = nil, returnElevation: Bool? = nil, consumptionModel: ConsumptionModelType? = nil, customConsumptionDetails: C? = nil, speedProfile: SpeedProfileType? = nil) {
        self.waypoints = waypoints
        self.mode = mode
        self.requestId = requestId
        self.avoidAreas = avoidAreas
        self.avoidLinks = avoidLinks
        self.avoidSeasonalClosures = avoidSeasonalClosures
        self.avoidTurns = avoidTurns
        self.allowedZones = allowedZones
        self.excludeZones = excludeZones
        self.excludeZoneType = excludeZoneType
        self.excludeCountry = excludeCountry
        self.departure = departure
        self.arrival = arrival
        self.alternatives = alternatives
        self.metricSystem = metricSystem
        self.viewBounds = viewBounds
        self.resolution = resolution
        self.instructionFormat = instructionFormat
        self.language = language
        self.jsonAttributes = jsonAttributes
        self.jsonCallback = jsonCallback
        self.representation = representation
        self.routeAttributes = routeAttributes
        self.legAttributes = legAttributes
        self.maneuverAttributes = maneuverAttributes
        self.linkAttributes = linkAttributes
        self.lineAttributes = lineAttributes
        self.generalizationTolerances = generalizationTolerances
        self.vehicleType = vehicleType
        self.licensePlate = licensePlate
        self.maxNumberOfChanges = maxNumberOfChanges
        self.avoidTransportType = avoidTransportType
        self.walkTimeMultiplier = walkTimeMultiplier
        self.walkSpeed = walkSpeed
        self.walkRadius = walkRadius
        self.combineChange = combineChange
        self.truckType = truckType
        self.trailersCount = trailersCount
        self.axleCount = axleCount
        self.shippedHazardousGoods = shippedHazardousGoods
        self.limitedWeight = limitedWeight
        self.weightPerAxle = weightPerAxle
        self.weightsPerAxleGroup = weightsPerAxleGroup
        self.height = height
        self.width = width
        self.length = length
        self.tunnelCategory = tunnelCategory
        self.truckRestrictionPenalty = truckRestrictionPenalty
        self.returnElevation = returnElevation
        self.consumptionModel = consumptionModel
        self.customConsumptionDetails = customConsumptionDetails
        self.speedProfile = speedProfile
    }
}

extension RouteCalculationRequest: HereRequest {
    var requestParameters: String {
        var parameters = ""
        
        for waypoint in 0..<self.waypoints.count {
            parameters += "&waypoint\(waypoint)=\(self.waypoints[waypoint].description)"
        }
        
        parameters += "&mode=\(self.mode.description)"
        
        if let requestId = self.requestId {
            parameters += "requestid=\(requestId)"
        }
        
        if self.avoidAreas.count > 0 {
            parameters += "&avoidareas="
            
            for bbox in 0..<self.avoidAreas.count {
                if bbox > 0 {
                    parameters += "!"
                }
                
                parameters += self.avoidAreas[bbox].description
            }
        }
        
        if self.avoidLinks.count > 0 {
            parameters += "&avoidlinks="
            
            parameters += self.avoidLinks.reduce("") { (res, id) in
                res + "\(id),"
            }
            
            let _ = parameters.dropLast()
        }
        
        if let avoidSeasonalClosures = self.avoidSeasonalClosures {
            parameters += "&avoidseasonalclosures=\(avoidSeasonalClosures)"
        }
        
        if let transportMode = self.mode.transportMode, transportMode == .truck, self.avoidTurns.count > 0 {
            parameters += "&avoidturns="
            
            parameters += self.avoidTurns.reduce("") { (res, turn) in
                res + "\(turn.rawValue),"
            }
            
            let _ = parameters.dropLast()
        }
        
        if let allowedZones = self.allowedZones {
            parameters += "allowedzones=\(allowedZones)"
        }
        
        if self.excludeZones.count > 0 {
            parameters += "&excludezones="
            
            for zone in 0..<self.excludeZones.count {
                if zone > 0 {
                    parameters += ","
                }
                
                parameters += "\(self.excludeZones[zone])"
            }
        }
        
        if self.excludeZoneType.count > 0 {
            parameters += "&excludezonetypes="
            
            for zone in 0..<self.excludeZoneType.count {
                if zone > 0 {
                    parameters += ","
                }
                
                parameters += "\(self.excludeZoneType[zone].rawValue)"
            }
        }
        
        if self.excludeCountry.count > 0 {
            parameters += "&excludecountries="
            
            for country in 0..<self.excludeCountry.count {
                if country > 0 {
                    parameters += ","
                }
                
                parameters += "\(self.excludeCountry[country])"
            }
        }
        
        if let departure = self.departure {
            let formatter = DateFormatter()
            formatter.dateFormat = "YYYY-MM-DD'T'hh:mm:sszzzzzz"
            
            let formattedDepature = formatter.string(from: departure)
            
            parameters += "&departure=\(formattedDepature)"
        }
        
        if let arrival = self.arrival {
            let formatter = DateFormatter()
            formatter.dateFormat = "YYYY-MM-DD'T'hh:mm:sszzzzzz"
            
            let formattedArrival = formatter.string(from: arrival)
            
            parameters += "&arrival=\(formattedArrival)"
        }
        
        if let alternatives = self.alternatives {
            parameters += "&alternatives=\(alternatives)"
        }
        
        if let metricSystem = self.metricSystem {
            parameters += "&metricsystem=\(metricSystem.rawValue)"
        }
        
        if let viewBounds = self.viewBounds {
            parameters += "&viewBounds=\(viewBounds.description)"
        }
        
        if let resolution = self.resolution {
            parameters += "&resolution=\(resolution.viewResolution):\(resolution.snapResolution)"
        }
        
        if let instructionFormat = self.instructionFormat {
            parameters += "&instructionformat=\(instructionFormat.rawValue)"
        }
        
        if self.language.count > 0 {
            parameters += "&language="
            
            parameters += self.language.reduce("") { (res, lang) in
                res + "\(lang),"
            }
            
            let _ = parameters.dropLast()
        }
        
        if let jsonAttributes = self.jsonAttributes {
            parameters += "&jsonattributes=\(jsonAttributes)"
        }
        
        if let jsonCallback = self.jsonCallback {
            parameters += jsonCallback
        }
        
        if self.representation.count > 0 {
            parameters += "&representation="
            
            parameters += self.representation.reduce("") { (res, rep) in
                res + rep.rawValue
            }
            
            let _ = parameters.dropLast()
        }
        
        if self.routeAttributes.count > 0 {
            parameters += "&routeattributes="
            
            parameters += self.routeAttributes.reduce("") { (res, attr) in
                res + "\(attr.rawValue),"
            }
            
            let _ = parameters.dropLast()
        }
        
        if self.legAttributes.count > 0 {
            parameters += "&legattributes="
            
            parameters += self.legAttributes.reduce("") { (res, leg) in
                res + "\(leg.rawValue),"
            }
            
            let _ = parameters.dropLast()
        }
        
        if self.maneuverAttributes.count > 0 {
            parameters += "&maneuverattributes="
            
            parameters += self.maneuverAttributes.reduce("") { (res, man) in
                res + "\(man.rawValue),"
            }
            
            let _ = parameters.dropLast()
        }
        
        if self.linkAttributes.count > 0 {
            parameters += "&linkattributes="
            
            parameters += self.linkAttributes.reduce("") { (res, link) in
                res + "\(link.rawValue),"
            }
            
            let _ = parameters.dropLast()
        }
        
        if self.lineAttributes.count > 0 {
            parameters += "&lineattributes="
            
            parameters += self.lineAttributes.reduce("") { (res, line) in
                res + "\(line.rawValue),"
            }
            
            let _ = parameters.dropLast()
        }
        
        if self.generalizationTolerances.count > 0 {
            parameters += "&generalizationtolerances="
            
            parameters += self.generalizationTolerances.reduce("") { (res, tol) in
                res + "\(tol),"
            }
            
            let _ = parameters.dropLast()
        }
        
        if let vehicleType = self.vehicleType {
            parameters += "&vehicletype=\(vehicleType.description)"
        }
        
        if let licensePlate = self.licensePlate {
            parameters += "&licenseplate=\(licensePlate)"
        }
        
        if let maxNumberOfChanges = self.maxNumberOfChanges {
            parameters += "&maxnumberofchanges=\(maxNumberOfChanges)"
        }
        
        if self.avoidTransportType.count > 0 {
            parameters += "&avoidtransporttypes="
            
            parameters += self.avoidTransportType.reduce("") { (res, av) in
                res + "\(av.rawValue),"
            }
            
            let _ = parameters.dropLast()
        }
        
        if let walkTimeMultiplier = self.walkTimeMultiplier {
            parameters += "&walktimemultiplier=\(walkTimeMultiplier)"
        }
        
        if let walkSpeed = self.walkSpeed {
            parameters += "&walkspeed=\(walkSpeed)"
        }
        
        if let walkRadius = self.walkRadius {
            parameters += "&walkradius=\(walkRadius)"
        }
        
        if let combineChange = self.combineChange {
            parameters += "&combinechange=\(combineChange)"
        }
        
        if let truckType = self.truckType {
            parameters += "&trucktype=\(truckType.rawValue)"
        }
        
        if let trailersCount = self.trailersCount {
            parameters += "&trailersCount=\(trailersCount)"
        }
        
        if let axleCount = self.axleCount {
            parameters += "&axlecound=\(axleCount)"
        }
        
        if self.shippedHazardousGoods.count > 0 {
            parameters += "&shippedhazardousgoods="
            
            parameters += self.shippedHazardousGoods.reduce("") { (res, hg) in
                res + "\(hg.rawValue),"
            }
            
            let _ = parameters.dropLast()
        }
        
        if let limitedWeight = self.limitedWeight {
            parameters += "&limitedweight=\(limitedWeight)"
        }
        
        if let weightPerAxle = self.weightPerAxle {
            parameters += "&weightperaxle=\(weightPerAxle)"
        }
        
        if self.weightsPerAxleGroup.count > 0 {
            parameters += "&weightsperaxlegroup="
            
            parameters += self.weightsPerAxleGroup.reduce("") { (res, wg) in
                res + "\(wg.type.rawValue):\(wg.weight);"
            }
            
            let _ = parameters.dropLast()
        }
        
        if let height = self.height {
            parameters += "&height=\(height)"
        }
        
        if let width = self.width {
            parameters += "&width=\(width)"
        }
        
        if let length = self.length {
            parameters += "&length=\(length)"
        }
        
        if let tunnelCategory = self.tunnelCategory {
            parameters += "&tunnelcategory=\(tunnelCategory.rawValue)"
        }
        
        if let truckRestrictionPenalty = self.truckRestrictionPenalty {
            parameters += "&truckrestrictionpenalty=\(truckRestrictionPenalty.rawValue)"
        }
        
        if let returnElevation = self.returnElevation {
            parameters += "&returnelevation=\(returnElevation)"
        }
        
        if let consumptionModel = self.consumptionModel {
            parameters += "&consumptionmodel=\(consumptionModel)"
            
            if consumptionModel == .standard, let customConsumptionDetails = self.customConsumptionDetails {
                parameters += "&customconsumptiondetails=\(customConsumptionDetails.description)"
            }
        }
        
        if let speedProfile = self.speedProfile {
            parameters += "&speedProfile=\(speedProfile.rawValue)"
        }
        
        return parameters
    }
}

public struct ResoltionType: Content {
    public let viewResolution: UInt
    public let snapResolution: UInt
    
    public init(viewResolution: UInt, snapResolution: UInt) {
        self.viewResolution = viewResolution
        self.snapResolution = snapResolution
    }
}

public struct WeightPerAxleGroupType: Content {
    public let type: TruckAxleGroupType
    public let weight: UInt
    
    public init(type: TruckAxleGroupType, weight: UInt) {
        self.type = type
        self.weight = weight
    }
}
