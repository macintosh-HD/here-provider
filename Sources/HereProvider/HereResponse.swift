import Vapor

public struct SearchResponseType: Content {
    let metainfo: SearchResponseMetaInfoType
    let view: [SearchResultsViewType]
}

struct SearchResponseMetaInfoType: Content {
    let requestid: [String]
    let timestamp: Date
    let nextpageinformation: [String]
    let previouspageinformation: [String]
    let additionaldata: [String:String]
}

protocol SearchResponseViewType: Content {
    var viewid: String { get }
}

struct SearchResultsViewType: SearchResponseViewType, Content {
    let viewid: String
    let performedsearch: [SearchRequestType]
    let result: [SearchResultType]
}

struct SearchRequestType: Content {}

struct SearchResultType: Content {
    let relevance: Double
    let distance: [DistanceType]
    let direction: [HeadingType]
    let matchlevel: [MatchLevelType]
    let matchtype: [LocationMatchTypeType]
    let matchcode: [MatchCodeType]
    let additionaldata: [String:String]
    
    let location: LocationType
    let parsedrequest: [ParsedRequestType]
    let matchquality: [LocationMatchQualityType]
}

struct LocationMatchQualityType: Content {
    let name: [Double]
    let country: [Double]
    let state: [Double]
    let county: [Double]
    let city: [Double]
    let district: [Double]
    let subdistrict: [Double]
    let street: [Double]
    let housenumber: [Double]
    let postalcode: [Double]
    let building: [Double]
    let unit: [Double]
}

struct ParsedRequestType: Content {
    let name: [String]
    let label: [String]
    let country: [String]
    let state: [String]
    let county: [String]
    let city: [String]
    let district: [String]
    let subdistrict: [String]
    let street: [String]
    let housenumber: [String]
    let postalcode: [String]
    let building: [String]
    let addressline: [String]
    let additionaldata: [String:String]
}
