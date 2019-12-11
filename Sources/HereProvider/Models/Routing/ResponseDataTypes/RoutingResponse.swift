import Vapor

public protocol HereRoutingResponseType: Content {}

public struct HereRoutingResponse<R: HereRoutingResponseType>: Content {
    let response: R
}
