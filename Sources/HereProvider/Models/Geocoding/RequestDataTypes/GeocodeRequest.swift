public class HereGeocodeRequest {
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
    
    init(additionalData: [KeyValuePairType<String, String>], addressAttributes: HereAddressAttributes, appID: String, appCode: String, gen: Int, jsonAttributes: Int, jsonCallback: String, langugage: LanguageCodeType, locationAttributes: HereLocationAttributes, maxResults: Int, pageInformation: String, politicalView: String, prox: GeoProximityType, responseAttributes: HereResponseAttributes, strictLanguageMode: Bool) {
        self.additionalData = additionalData
        self.addressAttributes = addressAttributes
        self.appID = appID
        self.appCode = appCode
        self.gen = gen
        self.jsonAttributes = jsonAttributes
        self.jsonCallback = jsonCallback
        self.langugage = langugage
        self.locationAttributes = locationAttributes
        self.maxResults = maxResults
        self.pageInformation = pageInformation
        self.politicalView = politicalView
        self.prox = prox
        self.responseAttributes = responseAttributes
        self.strictLanguageMode = strictLanguageMode
    }
}
