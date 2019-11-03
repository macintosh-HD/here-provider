import Vapor

public struct LocationType: Content {
    public let locationid: String
    public let locationtype: LocationTypeType
    public let name: String?
    public let displayposition: GeoCoordinateType?
    public let navigationposition: [GeoCoordinateType]
    public let mapview: GeoBoundingBoxType?
    public let shape: GeoShapeType?
    
    public let address: AddressType
    public let related: [RelatedLocationType]
    public let linkinfo: LinkInfoType?
    public let admininfo: AdminInfoType?
    public let addressnames: AddressNamesType?
    public let addressdetails: AddressDetailsType?
    public let mapreference: MapReferenceType?
}

public struct AddressType: Content {
    public let label: String?
    public let country: CountryCodeType
    public let state: String?
    public let county: String?
    public let city: String?
    public let district: String?
    public let subdistrict: String?
    public let street: String?
    public let housenumber: String?
    public let postalcode: String?
    public let building: String?
    public let addressline: [String]
    public let additionaldata: [String:String]
    public let unit: String?
    
    public let distancemarker: DistanceMarkerType?
}

public struct DistanceMarkerType: Content {
    public let value: String
    public let offset: Double?
    public let unit: DistanceUnitType?
    public let directionOnSign: String?
}

public struct RelatedLocationType: Content {
    public let type: RelationshipEnumType
    public let matchtype: LocationMatchTypeType?
    public let routedistance: DistanceType?
    public let direction: HeadingType?
    
    public let location: LocationType
}

public struct LinkInfoType: Content {
    public let functionalclass: FunctionalClassType?
    public let traveldirection: [CardinalDirectionType]
    public let speedcategory: SpeedCategoryType?
    public let speedlimit: [SpeedLimitType]
    public let linkflags: [LinkFlagType]
    public let accessflags: [LinkAccessFlagType]
}

public struct AdminInfoType: Content {
    public let localtime: Date
    public let currency: CurrencyType?
    public let drivingside: DrivingSideType?
    public let systemofmeasure: SystemOfMeasurementType?
    
    public let timezone: TimeZoneType?
}

public struct TimeZoneType: Content {
    public let id: String
    public let offset: Int
    public let rawoffset: Int
    public let nameshort: String
    public let namelong: String
    public let namedstshort: String
    public let nmaedstlong: String
    public let indaylighttime: Bool
    public let dstsavings: Int
}

public struct AddressNamesType: Content {
    public let country: [LocalizedNameType]
    public let state: [LocalizedNameType]
    public let county: [LocalizedNameType]
    public let city: [LocalizedNameType]
    public let district: [LocalizedNameType]
    public let subdistrict: [LocalizedNameType]
    public let street: [LocalizedNameType]
}

public struct AddressDetailsType: Content {
    public let label: String?
    public let countrycode: CountryCodeType?
    public let country: LocalizedNameType?
    public let state: LocalizedNameType?
    public let county: LocalizedNameType?
    public let city: LocalizedNameType?
    public let district: LocalizedNameType?
    public let street: LocalizedNameType?
    public let housenumber: LocalizedNameType?
    public let postalcode: String?
    public let building: LocalizedNameType?
    
    public let streetdetails: StreetDetailType?
}

public struct StreetDetailType: Content {
    public let basename: String?
    public let streettype: String?
    public let streettypebefore: Bool?
    public let streettypeattached: Bool?
    public let prefix: String?
    public let suffix: String?
    public let direction: String?
}

public struct MapReferenceType: Content {
    public let referenceid: String?
    public let mapversion: String?
    public let mapid: String?
    public let sidofstreet: SideOfStreetType?
    public let spot: Double?
    public let stateid: String?
    public let countyid: String?
    public let cityid: String?
    public let districtid: String?
    public let buildingid: String?
    public let addressid: String?
}
