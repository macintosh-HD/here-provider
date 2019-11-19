import Vapor

public struct CalculateRouteResponseType<T: ManeuverType>: Content {
    public let metaInfo: RouteResponseMetaInfoType
    public let route: [RouteType<T>]
    public let language: LanguageCodeType
    public let sourceAttribution: SourceAttributionType
}
