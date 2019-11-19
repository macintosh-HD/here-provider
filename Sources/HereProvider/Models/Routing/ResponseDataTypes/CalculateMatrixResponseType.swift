import Vapor

public struct CalculateMatrixResponseType<S: RouteSummaryType>: Content {
    public let metaInfo: RouteResponseMetaInfoType
    public let matrixEntry: [RouteMatrixEntryType<S>]
}
