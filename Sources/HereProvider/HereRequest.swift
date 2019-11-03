public protocol HereRequest {
    var additionalData: [KeyValuePairs<String, String>] { get }
    var addressAttributes: HereAddressAttributes { get }
    var appID: String { get }
    var appCode: String { get }
    var gen: Int { get }
    var jsonAttributes: Int { get }
    var jsonCallback: String { get }
    var langugage: LangugageCodeType { get }
    var locationAttributes: HereLocationAttributes { get }
    var maxResults: Int { get }
    var pageInformation: String { get }
    var politicalView: String { get }
    var prox: GeoProximityType { get }
    var responseAttributes: HereResponseAttributes { get }
    var strictLanguageMode: Bool { get }
}

public class GeocodingRequest: HereRequest {
    let bbox: GeoBoundingBoxType
    let city: String
    let country: String
    let countryFocus: String
    let county: String
    let district: String
    let houseNumber: String
    let locationId: String
    let mapView: GeoBoundingBoxType
    let postalCode: String
    let searchText: String
    let state: String
    let street: String
}

public class LandmarkGeocodeRequest: GeocodingRequest {
    let categoryIds: Int
    let name: String
}

public class MultiReverseGeocodeRequest: HereRequest {
    let level: String
    let minResults: Int
    let mode: HereMode
    let sortBy
}

public class ReverseGeocodingRequest: MultiReverseGeocodeRequest {
    let pos: Coordinate
}
