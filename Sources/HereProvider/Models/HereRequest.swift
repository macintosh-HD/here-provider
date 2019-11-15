import Vapor

protocol HereRequest {
    var requestParameters: String { get }
}
