import Vapor

public struct VehicleRestrictionType: Content {
    public let validityPeriod: RecurringTimeIntervalsCombinationType
    public let licensePlatePattern: LicensePlatePatternType
}

public typealias LicensePlatePatternType = String
