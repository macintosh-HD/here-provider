import Vapor

public struct RouteMatrixEntryType: Content {
    public let startIndex: Int
    public let destinationIndex: Int
    public let summary: RouteSummaryType
    public let status: RouteStatusType
}

public enum RouteStatusType: String, Content {
    case rangeExceeded, failed
}
