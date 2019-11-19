public class LandmarkGeocodeRequest: GeocodingRequest {
    let categoryIds: Int
    let name: String
    
    init(additionalData: [KeyValuePairType<String, String>], addressAttributes: HereAddressAttributes, appID: String, appCode: String, gen: Int, jsonAttributes: Int, jsonCallback: String, language: LanguageCodeType, locationAttributes: HereLocationAttributes, maxResults: Int, pageInformation: String, politicalView: String, prox: GeoProximityType, responseAttributes: HereResponseAttributes, strictLanguageMode: Bool, bbox: GeoBoundingBoxType, city: String, country: String, countryFocus: String, county: String, district: String, houseNumber: String, locationId: String, mapView: GeoBoundingBoxType, postalCode: String, searchText: String, state: String, street: String, categoryIds: Int, name: String) {
        self.categoryIds = categoryIds
        self.name = name

        super.init(additionalData: additionalData, addressAttributes: addressAttributes, appID: appID, appCode: appCode, gen: gen, jsonAttributes: jsonAttributes, jsonCallback: jsonCallback, language: language, locationAttributes: locationAttributes, maxResults: maxResults, pageInformation: pageInformation, politicalView: politicalView, prox: prox, responseAttributes: responseAttributes, strictLanguageMode: strictLanguageMode, bbox: bbox, city: city, country: country, countryFocus: countryFocus, county: county, district: district, houseNumber: houseNumber, locationId: locationId, mapView: mapView, postalCode: postalCode, searchText: searchText, state: state, street: street)        
    }
}
