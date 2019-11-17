import Vapor

public class InvalidInputData: RoutingServiceErrorType {
    init(details: String, additionalData: [KeyValuePairType<String, String>]) {
        super.init(type: .ApplicationError, subtype: "InvalidInputData", details: details, additionalData: additionalData)
    }
}
