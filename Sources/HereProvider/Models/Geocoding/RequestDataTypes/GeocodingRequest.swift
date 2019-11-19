public struct GeocodingRequest: HereGeocodeRequest {
    // inherited properties
    let additionalData: [KeyValuePairType<String, String>]
    let addressAttributes: HereAddressAttributes
    let appID: String
    let appCode: String
    let gen: Int
    let jsonAttributes: Int
    let jsonCallback: String
    let langugage: LanguageCodeType
    let locationAttributes: HereLocationAttributes
    let maxResults: Int
    let pageInformation: String
    let politicalView: String
    let prox: GeoProximityType
    let responseAttributes: HereResponseAttributes
    let strictLanguageMode: Bool
    
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
