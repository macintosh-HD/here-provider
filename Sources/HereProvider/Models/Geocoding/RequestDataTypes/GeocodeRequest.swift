public protocol HereGeocodeRequest {
    var additionalData: [KeyValuePairType<String, String>] { get }
    var addressAttributes: HereAddressAttributes { get }
    var appID: String { get }
    var appCode: String { get }
    var gen: Int { get }
    var jsonAttributes: Int { get }
    var jsonCallback: String { get }
    var langugage: LanguageCodeType { get }
    var locationAttributes: HereLocationAttributes { get }
    var maxResults: Int { get }
    var pageInformation: String { get }
    var politicalView: String { get }
    var prox: GeoProximityType { get }
    var responseAttributes: HereResponseAttributes { get }
    var strictLanguageMode: Bool { get }
}
