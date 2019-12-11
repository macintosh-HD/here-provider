import Vapor

public protocol HereRoutingResponseType: Content {}

public struct HereRoutingResponse<R: HereRoutingResponseType>: Content {
    public let response: R
}
