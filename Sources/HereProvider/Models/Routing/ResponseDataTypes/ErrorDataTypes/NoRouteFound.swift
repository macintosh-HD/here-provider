import Vapor

public class NoRouteFound: RoutingServiceErrorType {
    init(details: String) {
        super.init(type: .ApplicationError, subtype: "NoRouteFound", details: details)
    }
}
