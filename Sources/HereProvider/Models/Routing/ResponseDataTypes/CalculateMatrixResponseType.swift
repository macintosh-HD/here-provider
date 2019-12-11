import Vapor

public struct CalculateMatrixResponseType<S: RouteSummaryType>: HereRoutingResponseType {
    public let metaInfo: RouteResponseMetaInfoType
    public let matrixEntry: [RouteMatrixEntryType<S>]
}
