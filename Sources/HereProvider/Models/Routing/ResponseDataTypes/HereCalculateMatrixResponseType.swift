import Vapor

public struct CalculateMatricResponseType: Content {
    public let metaInfo: RouteResponseMetaInfoType
    public let matrixEntry: [RouteMatrixEntryType]
}
