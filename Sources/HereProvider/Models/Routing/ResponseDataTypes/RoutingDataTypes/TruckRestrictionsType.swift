import Vapor

public struct TruckRestrictionsType: Content {
    public let trailerForbidden: Bool?
    public let forbiddenHazardousGoods: HazardousGoodTypeType?
    public let limitedWeight: WeightType?
    public let weightPerAxle: WeightType?
    public let height: Double?
    public let width: Double?
    public let length: Double?
    public let tunnelCategory: String?
    public let conditionalRestriction: [ConditionalTruckRestrictionType]?
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
