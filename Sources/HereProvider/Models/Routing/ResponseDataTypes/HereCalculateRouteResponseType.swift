import Vapor

public struct CalculateRouteResponseType: Content {
    public let metaInfo: RouteResponseMetaInfoType
    public let route: [RouteType]
    public let language: LanguageCodeType
    public let sourceAttribution: SourceAttributionType
}
