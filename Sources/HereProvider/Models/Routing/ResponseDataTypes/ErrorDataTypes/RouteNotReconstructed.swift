import Vapor

public class RouteNotReconstructed: RoutingServiceErrorType {
    init(details: String, additionalData: [KeyValuePairType<String, String>]) {
        super.init(type: .ApplicationError, subtype: "RouteNotReconstructed", details: details, additionalData: additionalData)
    }
}
