import Vapor

public struct GetRouteResponseType<T: ManeuverType>: Content {
    public let metaInfo: RouteResponseMetaInfoType
    public let route: RouteType<T>
    public let language: LanguageCodeType
}
