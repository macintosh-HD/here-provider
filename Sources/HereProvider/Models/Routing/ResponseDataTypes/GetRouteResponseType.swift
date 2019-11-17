import Vapor

public struct GetRouteResponseType: Content {
    public let metaInfo: RouteResponseMetaInfoType
    public let route: RouteType
    public let language: LanguageCodeType
}
