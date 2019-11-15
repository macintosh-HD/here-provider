import Vapor

protocol HereRequest {
    var requestURL: URL { get }
}
