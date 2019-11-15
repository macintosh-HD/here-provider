import Vapor

public struct LocationType: Content {
    public let locationId: String
    public let locationType: LocationTypeType
    public let name: String?
    public let displayPosition: GeoCoordinateType?
    public let navigationPosition: [GeoCoordinateType]?
    public let mapView: GeoBoundingBoxType?
    public let shape: GeoShapeType?
    
    public let address: AddressType
    public let related: [RelatedLocationType]?
    public let linkInfo: LinkInfoType?
    public let adminInfo: AdminInfoType?
    public let addressNames: AddressNamesType?
    public let addressDetails: AddressDetailsType?
    public let mapReference: MapReferenceType?
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
    public let houseNumber: String?
    public let postalCode: String?
    public let building: String?
    public let addressLine: [String]?
    public let additionalData: [KeyValuePairType<String, String>]?
    public let unit: String?
    
    public let distanceMarker: DistanceMarkerType?
}

public struct DistanceMarkerType: Content {
    public let value: String
    public let offset: Double?
    public let unit: DistanceUnitType?
    public let directionOnSign: String?
}

public struct RelatedLocationType: Content {
    public let type: RelationshipEnumType
    public let matchType: LocationMatchTypeType?
    public let routeDistance: DistanceType?
    public let direction: HeadingType?
    
    public let location: LocationType
}

public struct LinkInfoType: Content {
    public let functionalClass: FunctionalClassType?
    public let travelDirection: [CardinalDirectionType]?
    public let speedCategory: SpeedCategoryType?
    public let speedLimit: [SpeedLimitType]?
    public let linkFlags: [LinkFlagType]?
    public let accessFlags: [LinkAccessFlagType]?
}

public struct AdminInfoType: Content {
    public let localTime: String
    public let currency: CurrencyType?
    public let drivingSide: DrivingSideType?
    public let systemOfMeasure: SystemOfMeasurementType?
    
    public let timezone: TimeZoneType?
}

public struct TimeZoneType: Content {
    public let id: String
    public let offset: Int
    public let rawOffset: Int
    public let nameShort: String
    public let nameLong: String
    public let nameDstShort: String
    public let nameDstLong: String
    public let inDayLightTime: Bool
    public let dstSavings: Int
}

public struct AddressNamesType: Content {
    public let country: [LocalizedNameType]?
    public let state: [LocalizedNameType]?
    public let county: [LocalizedNameType]?
    public let city: [LocalizedNameType]?
    public let district: [LocalizedNameType]?
    public let subdistrict: [LocalizedNameType]?
    public let street: [LocalizedNameType]?
}

public struct AddressDetailsType: Content {
    public let label: String?
    public let countryCode: CountryCodeType?
    public let country: LocalizedNameType?
    public let state: LocalizedNameType?
    public let county: LocalizedNameType?
    public let city: LocalizedNameType?
    public let district: LocalizedNameType?
    public let street: LocalizedNameType?
    public let houseNumber: LocalizedNameType?
    public let postalCode: String?
    public let building: LocalizedNameType?
    
    public let streetDetails: StreetDetailType?
}

public struct StreetDetailType: Content {
    public let baseName: String?
    public let streetType: String?
    public let streetTypeBefore: Bool?
    public let streetTypeAttached: Bool?
    public let prefix: String?
    public let suffix: String?
    public let direction: String?
}

public struct MapReferenceType: Content {
    public let referenceId: String?
    public let mapVersion: String?
    public let mapId: String?
    public let sidOfStreet: SideOfStreetType?
    public let spot: Double?
    public let stateId: String?
    public let countyId: String?
    public let cityId: String?
    public let districtId: String?
    public let buildingId: String?
    public let addressId: String?
}
