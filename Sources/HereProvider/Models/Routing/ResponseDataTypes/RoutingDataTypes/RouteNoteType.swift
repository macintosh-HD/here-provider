import Vapor

public struct RouteNoteType: Content {
    public let type: RouteNoteTypeType
    public let code: RouteNoteCodeType
    public let text: String?
    public let additionalData: [KeyValuePairType<String,String>]?
    public let countryChangeDetails: CountryChangeDetailsType?
    public let zoneIds: [UInt]?
}
