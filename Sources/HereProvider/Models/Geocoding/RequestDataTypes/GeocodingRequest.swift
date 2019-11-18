public class GeocodingRequest: HereGeocodeRequest {
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
    
    init(additionalData: [KeyValuePairType<String, String>], addressAttributes: HereAddressAttributes, appID: String, appCode: String, gen: Int, jsonAttributes: Int, jsonCallback: String, langugage: LanguageCodeType, locationAttributes: HereLocationAttributes, maxResults: Int, pageInformation: String, politicalView: String, prox: GeoProximityType, responseAttributes: HereResponseAttributes, strictLanguageMode: Bool, bbox: GeoBoundingBoxType, city: String, country: String, countryFocus: String, county: String, district: String, houseNumber: String, locationId: String, mapView: GeoBoundingBoxType, postalCode: String, searchText: String, state: String, street: String) {
        super.init(additionalData: additionalData, addressAttributes: addressAttributes, appID: appID, appCode: appCode, gen: gen, jsonAttributes: jsonAttributes, jsonCallback: jsonCallback, langugage: langugage, locationAttributes: locationAttributes, maxResults: maxResults, pageInformation: pageInformation, politicalView: politicalView, prox: prox, responseAttributes: responseAttributes, strictLanguageMode: strictLanguageMode)
        
        self.bbox = bbox
        self.city = city
        self.country = country
        self.countryFocus = countryFocus
        self.county = county
        self.district = district
        self.houseNumber = houseNumber
        self.locationId = locationId
        self.mapView = mapView
        self.postalCode = postalCode
        self.searchText = searchText
        self.state = state
        self.street = street
    }
}
