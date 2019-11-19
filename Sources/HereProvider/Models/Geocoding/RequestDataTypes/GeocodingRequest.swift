public class GeocodingRequest: HereGeocodeRequest {
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
    
    init(additionalData: [KeyValuePairType<String, String>], addressAttributes: HereAddressAttributes, appID: String, appCode: String, gen: Int, jsonAttributes: Int, jsonCallback: String, language: LanguageCodeType, locationAttributes: HereLocationAttributes, maxResults: Int, pageInformation: String, politicalView: String, prox: GeoProximityType, responseAttributes: HereResponseAttributes, strictLanguage: Bool, bbox: GeoBoundingBoxType, city: String, country: String, countryFocus: String, county: String, district: String, houseNumber: String, locationId: String, mapView: GeoBoundingBoxType, postalCode: String, searchText: String, state: String, street: String) {
        self.additionalData = additionalData
        self.addressAttributes = addressAttributes
        self.appID = appID
        self.appCode = appCode
        self.gen = gen
        self.jsonAttributes = jsonAttributes
        self.jsonCallback = jsonCallback
        self.langugage = language
        self.locationAttributes = locationAttributes
    }
}
