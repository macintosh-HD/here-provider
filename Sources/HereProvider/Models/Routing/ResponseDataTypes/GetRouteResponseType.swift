import Vapor

public struct GetRouteResponseType<M: ManeuverType, L: RouteLinkType, S: RouteSummaryType>: HereRoutingResponseType {
    public let metaInfo: RouteResponseMetaInfoType
    public let route: RouteType<M, L, S>
    public let language: LanguageCodeType
}
