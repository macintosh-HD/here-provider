public class ReverseGeocodingRequest: MultiReverseGeocodeRequest {
    let pos: HereCoordinate
    
    init(additionalData: [KeyValuePairType<String, String>], addressAttributes: HereAddressAttributes, appID: String, appCode: String, gen: Int, jsonAttributes: Int, jsonCallback: String, language: LanguageCodeType, locationAttributes: HereLocationAttributes, maxResults: Int, pageInformation: String, politicalView: String, prox: GeoProximityType, responseAttributes: HereResponseAttributes, strictLanguageMode: Bool, level: String, minResults: Int, mode: HereMode, sortBy: String, pos: HereCoordinate) {
        self.pos = pos

        super.init(additionalData: additionalData, addressAttributes: addressAttributes, appID: appID, appCode: appCode, gen: gen, jsonAttributes: jsonAttributes, jsonCallback: jsonCallback, language: language, locationAttributes: locationAttributes, maxResults: maxResults, pageInformation: pageInformation, politicalView: politicalView, prox: prox, responseAttributes: responseAttributes, strictLanguageMode: strictLanguageMode, level: level, minResults: minResults, mode: mode, sortBy: sortBy)        
    }
}
