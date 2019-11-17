import Vapor

public struct IncidentType: Content {
    public let validityPeriod: RecurringTimeIntervalsCombinationType
    public let text: String
    public let type: IncidentTypeType
    public let criticality: Int
    public let firstPoint: Int
    public let lastPoint: Int
}
