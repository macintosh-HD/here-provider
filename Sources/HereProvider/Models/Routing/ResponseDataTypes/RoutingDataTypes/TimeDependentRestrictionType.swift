import Vapor

public struct TimeDependentRestrictionType: Content {
    public let validityPeriod: RecurringTimeIntervalsCombinationType
    public let type: TimeDependentRestrictionTypeType
}
