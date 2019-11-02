import Vapor

struct LocationType: Content {
    let locationid: String
    let locationtype: LocationTypeType
    let name: String?
    let displayposition: GeoCoordinateType?
    let navigationposition: [GeoCoordinateType]
    let mapview: GeoBoundingBoxType?
    let shape: GeoShapeType?
    
    let address: AddressType
    let related: [RelatedLocationType]
    let linkinfo: LinkInfoType?
    let admininfo: AdminInfoType?
    let addressnames: AddressNamesType?
    let addressdetails: AddressDetailsType?
    let mapreference: MapReferenceType?
}

struct AddressType: Content {
    let label: String?
    let country: CountryCodeType
    let state: String?
    let county: String?
    let city: String?
    let district: String?
    let subdistrict: String?
    let street: String?
    let housenumber: String?
    let postalcode: String?
    let building: String?
    let addressline: [String]
    let additionaldata: [String:String]
    let unit: String?
    
    let distancemarker: DistanceMarkerType?
}

struct DistanceMarkerType: Content {
    let value: String
    let offset: Double?
    let unit: DistanceUnitType?
    let directionOnSign: String?
}

struct RelatedLocationType: Content {
    let type: RelationshipEnumType
    let matchtype: LocationMatchTypeType?
    let routedistance: DistanceType?
    let direction: HeadingType?
    
    let location: LocationType
}

struct LinkInfoType: Content {
    let functionalclass: FunctionalClassType?
    let traveldirection: [CardinalDirectionType]
    let speedcategory: SpeedCategoryType?
    let speedlimit: [SpeedLimitType]
    let linkflags: [LinkFlagType]
    let accessflags: [LinkAccessFlagType]
}

struct AdminInfoType: Content {
    let localtime: Date
    let currency: CurrencyType?
    let drivingside: DrivingSideType?
    let systemofmeasure: SystemOfMeasurementType?
    
    let timezone: TimeZoneType?
}

struct TimeZoneType: Content {
    let id: String
    let offset: Int
    let rawoffset: Int
    let nameshort: String
    let namelong: String
    let namedstshort: String
    let nmaedstlong: String
    let indaylighttime: Bool
    let dstsavings: Int
}

struct AddressNamesType: Content {
    let country: [LocalizedNameType]
    let state: [LocalizedNameType]
    let county: [LocalizedNameType]
    let city: [LocalizedNameType]
    let district: [LocalizedNameType]
    let subdistrict: [LocalizedNameType]
    let street: [LocalizedNameType]
}

struct AddressDetailsType: Content {
    let label: String?
    let countrycode: CountryCodeType?
    let country: LocalizedNameType?
    let state: LocalizedNameType?
    let county: LocalizedNameType?
    let city: LocalizedNameType?
    let district: LocalizedNameType?
    let street: LocalizedNameType?
    let housenumber: LocalizedNameType?
    let postalcode: String?
    let building: LocalizedNameType?
    
    let streetdetails: StreetDetailType?
}

struct StreetDetailType: Content {
    let basename: String?
    let streettype: String?
    let streettypebefore: Bool?
    let streettypeattached: Bool?
    let prefix: String?
    let suffix: String?
    let direction: String?
}

struct MapReferenceType: Content {
    let referenceid: String?
    let mapversion: String?
    let mapid: String?
    let sidofstreet: SideOfStreetType?
    let spot: Double?
    let stateid: String?
    let countyid: String?
    let cityid: String?
    let districtid: String?
    let buildingid: String?
    let addressid: String?
}
