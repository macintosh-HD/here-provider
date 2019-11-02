import XCTest
import Vapor
@testable import HereProvider

final class HereProviderTests: XCTestCase {
    
    var app: Application!
    
    override func setUp() {
        super.setUp()
        
        app = try! Application.testable()
    }
    
    override func tearDown() {
        super.tearDown()
        
        try? app.syncShutdownGracefully()
    }
    
    func geocode() {
        
    }
    
    func reverseGeocodeTest() {
        let hereClient = try app.sharedContainer.make(HereClient.self)
        let response = hereClient.reverseGeocode(coordiante: Coordinate(lon: 5, lat: 5)).wait()
        
        XCTAssertNotNil(response)
    }

    static var allTests = [
        ("reverseGeocodeText", reverseGeocodeTest)
    ]
}
