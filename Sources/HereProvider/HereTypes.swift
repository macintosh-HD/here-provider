import Vapor

public typealias DistanceType = Double

public enum DistanceUnitType: String, Codable {
    case mi, km
}

public typealias HeadingType = Double

public enum CardinalDirectionType: String, Codable {
    case north = "N"
    case east = "E"
    case south = "S"
    case west = "W"
    case northeast = "NE"
    case southeast = "SE"
    case southwest = "SW"
    case northwest = "NW"
}

public typealias CountryCodeType = String

public enum SideOfStreetType: String, Codable {
    case left, right, neither
}

public enum ShapeFormatType: String, Codable {
    case WKT
}

public struct GeoCoordinateType: Codable {
    let latitude: Double
    let longitude: Double
    let altitude: Double?
}

public struct GeoBoundingBoxType: Codable {
    let topLeft: GeoCoordinateType
    let bottomRight: GeoCoordinateType
}

public struct GeoProximityType: Codable {
    let center: GeoCoordinateType
    let radius: Double
}

public struct GeoPositionType: Codable {
    let coordinate: GeoCoordinateType
    let heading: Double?
}

public typealias GeoShapeType = WKTShapeType

public struct WKTShapeType: Codable {
    let value: String
}

public struct KeyValuePairType<X,Y>: Content where X: Content, Y: Content {
    let key: X
    let value: Y
}

public struct LocalizedNameType: Codable {
    let value: String
    let language: String
}

public typealias FunctionalClassType = UInt8

public enum SpeedCategoryType: String, Codable {
    case SC1, SC2, SC3, SC4, SC5, SC6, SC7, SC8
}

public struct SpeedLimitType: Codable {
    let value: Int
    let unit: SpeedLimitUnitType
}

public enum SpeedLimitUnitType: String, Codable {
    case mph, kph
}

public enum LinkFlagType: String, Codable {
    case ControlledAccess, MultiDigitized, Frontage, Paved, Ramp, Private, Tollway, PoiAccess, FourWheelDrive, ParkingLotRoad, CarpoolRoad, Reversible, ExpressLand
}

public enum LinkAccessFlagType: String, Codable {
    case Automobiles, Buses, Taxis, Carpools, Pedestrians, Trucks, Deliveries, EmergencyVehicle, ThroughTraffic, Motorcycles
}

public enum RelationshipEnumType: String, Codable {
    case nearByDistanceMarker, nearByAddress, microPointAddress
}

public typealias CurrencyType = String

public enum DrivingSideType: String, Codable {
    case left, right
}

public enum SystemOfMeasurementType: String, Codable {
    case imperial, metric
}

public enum LocationTypeType: String, Codable {
    case area, address, trail, park, lake, mountainPeek, volcano, river, golfCourse, industrialComplex, island, woodland, cemetery, canalWaterChannerl, bayHarbor, airport, hospital, sportsComplex, shoppingCentre, universityCollege, nativeAmericanReservation, railroad, militaryBase, parkingLot, parkingGarage, animalPark, beach, distanceMarker, point
}

public enum LocationMatchTypeType: String, Codable {
    case pointAddress, interpolated
}

public enum MatchLevelType: String, Codable {
    case country, state, county, city, district, street, intersection, houseNumber, postalCode, landmark
}

public enum MatchCodeType: String, Codable {
    case exact, ambiguous, upHierarchy, ambiguousHierarchy
}

// MARK: Request Types
public enum HereFormats: String {
    case json, xml
}

public struct Coordinate {
    let lon: Double
    let lat: Double
    let bearing: Int = 0
}

extension Coordinate: CustomStringConvertible {
    public var description: String {
        return "\(lon.description),\(lat.description)"
    }
}

extension Coordinate: Content {}

public enum HereMode: String {
    case retrieveAdresses, retrieveAreas, retrieveLandmarks, retrieveAll, trackPosition
}

public enum HereAddressAttributes: String {
    case country = "ctr"
    case state = "sta"
    case county = "cty"
    case city = "cit"
    case district = "dis"
    case subdistrict = "sdi"
    case street = "str"
    case houseNumber = "hnr"
    case postalCode = "pst"
    case addressLine = "aln"
    case additionalData = "add"
}

public enum HereLevel: String {
    case country, state, county, city, district, postalCode
}

public enum HereLocationAttributes: String {
    case address = "ar"
    case mapReference = "mr"
    case mapView = "mv"
    case adressDetails = "dt"
    case streetDetails = "sd"
    case additionalData = "ad"
    case adminIds = "ai"
    case linkInfo = "li"
    case adminInfo = "in"
    case timeZone = "tz"
    case addressNamesBilingual = "nb"
    case relatedNearByAddress = "rn"
}

public enum HereResponseAttributes: String {
    case performedSearch = "ps"
    case matchQuality = "mq"
    case matchType = "mt"
    case matchCode = "mc"
    case parsedRequest = "pr"
}
