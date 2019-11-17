import Vapor

public class InvalidCredentials: RoutingServiceErrorType {
    init(details: String, requestToken: String) {
        super.init(type: .PermissionError, subtype: "InvalidCredentials", details: details, additionalData: [KeyValuePairType<String, String>(key: "token", value: requestToken)])
    }
}
