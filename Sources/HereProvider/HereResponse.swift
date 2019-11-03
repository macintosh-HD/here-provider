import Vapor

public struct SearchResponseType: Content {
    public let metaInfo: SearchResponseMetaInfoType
    public let view: [SearchResultsViewType]
}

public struct SearchResponseMetaInfoType: Content {
    public let requestid: [String]
    public let timestamp: Date
    public let nextpageinformation: [String]
    public let previouspageinformation: [String]
    public let additionaldata: [String:String]
}

protocol SearchResponseViewType: Content {
    var viewid: String { get }
}

public struct SearchResultsViewType: SearchResponseViewType, Content {
    public let viewid: String
    public let performedsearch: [SearchRequestType]
    public let result: [SearchResultType]
}

public struct SearchRequestType: Content {}

public struct SearchResultType: Content {
    public let relevance: Double
    public let distance: [DistanceType]
    public let direction: [HeadingType]
    public let matchlevel: [MatchLevelType]
    public let matchtype: [LocationMatchTypeType]
    public let matchcode: [MatchCodeType]
    public let additionaldata: [String:String]
    
    public let location: LocationType
    public let parsedrequest: [ParsedRequestType]
    public let matchquality: [LocationMatchQualityType]
}

public struct LocationMatchQualityType: Content {
    public let name: [Double]
    public let country: [Double]
    public let state: [Double]
    public let county: [Double]
    public let city: [Double]
    public let district: [Double]
    public let subdistrict: [Double]
    public let street: [Double]
    public let housenumber: [Double]
    public let postalcode: [Double]
    public let building: [Double]
    public let unit: [Double]
}

public struct ParsedRequestType: Content {
    public let name: [String]
    public let label: [String]
    public let country: [String]
    public let state: [String]
    public let county: [String]
    public let city: [String]
    public let district: [String]
    public let subdistrict: [String]
    public let street: [String]
    public let housenumber: [String]
    public let postalcode: [String]
    public let building: [String]
    public let addressline: [String]
    public let additionaldata: [String:String]
}
