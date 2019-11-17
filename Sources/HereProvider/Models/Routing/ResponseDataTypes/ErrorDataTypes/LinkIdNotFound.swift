import Vapor

public class LinkIdNotFound: RoutingServiceErrorType {
    init(details: String, additionalData: [KeyValuePairType<String, String>]) {
        super.init(type: .ApplicationError, subtype: "LinkIdNotFound", details: details, additionalData: additionalData)
    }
}
