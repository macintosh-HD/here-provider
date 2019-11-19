import Vapor

public struct RouteMatrixEntryType<S: RouteSummaryType>: Content {
    public let startIndex: Int
    public let destinationIndex: Int
    public let summary: S
    public let status: RouteStatusType
}

public enum RouteStatusType: String, Content {
    case rangeExceeded, failed
}
