import Vapor

public class WaypointNotFound: RoutingServiceErrorType {
    init(details: String, additionalData: [KeyValuePairType<String, String>]) {
        super.init(type: .ApplicationError, subtype: "WaypointNotFound", details: details, additionalData: additionalData)
    }
}
