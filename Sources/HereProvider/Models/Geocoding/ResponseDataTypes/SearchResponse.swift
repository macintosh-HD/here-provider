import Vapor

public struct HereSearchResponse: Content {
    public let response: SearchResponseType?
}

public struct HereMultiReverseResponse: Content {
    public let response: MultiSearchResponseType?
}

public struct SearchResponseType: Content {
    public let metaInfo: SearchResponseMetaInfoType
    public let view: [SearchResultsViewType]?
}

public struct MultiSearchResponseType: Content {
    public let metaInfo: MultiSearchResponseMetaInfoType
    public let item: [MultiSearchResponseItemType]?
}

public protocol HereResponseMetaInfoType: Content {
    var requestId: String? { get }
    var timestamp: String { get }
    var additionalData: [KeyValuePairType<String, String>]? { get }
}

public struct SearchResponseMetaInfoType: HereResponseMetaInfoType, Content {
    public let requestId: String?
    public let timestamp: String
    public let nextPageInformation: String?
    public let previousPageInformation: String?
    public let additionalData: [KeyValuePairType<String, String>]?
}

public struct MultiSearchResponseMetaInfoType: HereResponseMetaInfoType, Content {
    public let requestId: String?
    public let timestamp: String
    public let additionalData: [KeyValuePairType<String, String>]?
}

protocol SearchResponseViewType: Content {
    var viewId: Int { get }
}

public struct SearchResultsViewType: SearchResponseViewType, Content {
    public let viewId: Int
    public let performedSearch: SearchRequestType?
    public let result: [SearchResultType]?
}

public struct MultiSearchResponseItemType: Content {
    public let itemId: String
    public let result: [SearchResultType]?
}

public struct SearchRequestType: Content {}

public struct SearchResultType: Content {
    public let relevance: Double
    public let distance: DistanceType?
    public let direction: HeadingType?
    public let matchLevel: MatchLevelType?
    public let matchType: LocationMatchTypeType?
    public let matchCode: MatchCodeType?
    public let additionalData: [KeyValuePairType<String, String>]?
    
    public let location: LocationType
    public let parsedRequest: ParsedRequestType?
    public let matchQuality: LocationMatchQualityType?
}

public struct LocationMatchQualityType: Content {
    public let name: Double?
    public let country: Double?
    public let state: Double?
    public let county: Double?
    public let city: Double?
    public let district: Double?
    public let subdistrict: Double?
    public let street: [Double]?
    public let houseNumber: Double?
    public let postalCode: Double?
    public let building: Double?
    public let unit: Double?
}

public struct ParsedRequestType: Content {
    public let name: String?
    public let label: String
    public let country: String?
    public let state: String?
    public let county: String?
    public let city: String?
    public let district: String?
    public let subdistrict: String?
    public let street: String?
    public let houseNumber: String?
    public let postalCode: String?
    public let building: String?
    public let addressLine: [String]?
    public let additionalData: [KeyValuePairType<String, String>]?
}
