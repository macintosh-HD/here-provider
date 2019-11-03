import Vapor

typealias DistanceType = Double

enum DistanceUnitType: String, Codable {
    case mi, km
}

typealias HeadingType = Double

enum CardinalDirectionType: String, Codable {
    case north = "N"
    case east = "E"
    case south = "S"
    case west = "W"
    case northeast = "NE"
    case southeast = "SE"
    case southwest = "SW"
    case northwest = "NW"
}

typealias CountryCodeType = String

enum SideOfStreetType: String, Codable {
    case left, right, neither
}

enum ShapeFormatType: String, Codable {
    case WKT
}

struct GeoCoordinateType: Codable {
    let latitude: Double
    let longitude: Double
    let altitude: Double?
}

struct GeoBoundingBoxType: Codable {
    let topleft: GeoCoordinateType
    let bottomright: GeoCoordinateType
}

struct GeoProximityType: Codable {
    let center: GeoCoordinateType
    let radius: Double
}

struct GeoPositionType: Codable {
    let coordinate: GeoCoordinateType
    let heading: Double?
}

typealias GeoShapeType = WKTShapeType

struct WKTShapeType: Codable {
    let value: String
}

//struct KeyValuePairType {
//    <#fields#>
//}

struct LocalizedNameType: Codable {
    let value: String
    let language: String
}

typealias FunctionalClassType = UInt8

enum SpeedCategoryType: String, Codable {
    case SC1, SC2, SC3, SC4, SC5, SC6, SC7, SC8
}

struct SpeedLimitType: Codable {
    let value: Int
    let unit: SpeedLimitUnitType
}

enum SpeedLimitUnitType: String, Codable {
    case mph, kph
}

enum LinkFlagType: String, Codable {
    case ControlledAccess, MultiDigitized, Frontage, Paved, Ramp, Private, Tollway, PoiAccess, FourWheelDrive, ParkingLotRoad, CarpoolRoad, Reversible, ExpressLand
}

enum LinkAccessFlagType: String, Codable {
    case Automobiles, Buses, Taxis, Carpools, Pedestrians, Trucks, Deliveries, EmergencyVehicle, ThroughTraffic, Motorcycles
}

enum RelationshipEnumType: String, Codable {
    case nearByDistanceMarker, nearByAddress, microPointAddress
}

typealias CurrencyType = String

enum DrivingSideType: String, Codable {
    case left, right
}

enum SystemOfMeasurementType: String, Codable {
    case imperial, metric
}

enum LocationTypeType: String, Codable {
    case area, address, trail, park, lake, mountainPeek, volcano, river, golfCourse, industrialComplex, island, woodland, cemetery, canalWaterChannerl, bayHarbor, airport, hospital, sportsComplex, shoppingCentre, universityCollege, nativeAmericanReservation, railroad, militaryBase, parkingLot, parkingGarage, animalPark, beach, distanceMarker
}

enum LocationMatchTypeType: String, Codable {
    case pointAddress, interpolated
}

enum MatchLevelType: String, Codable {
    case country, state, county, city, district, street, intersection, houseNumber, postalCode, landmark
}

enum MatchCodeType: String, Codable {
    case exact, ambiguous, upHierarchy, ambiguousHierarchy
}

// MARK: Request Types
enum HereFormats: String {
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

enum HereMode: String {
    case retrieveAdresses, retrieveAreas, retrieveLandmarks, retrieveAll, trackPosition
}

enum HereAddressAttributes: String {
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

enum HereLevel: String {
    case country, state, county, city, district, postalCode
}

enum HereLocationAttributes: String {
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

enum HereResponseAttributes: String {
    case performedSearch = "ps"
    case matchQuality = "mq"
    case matchType = "mt"
    case matchCode = "mc"
    case parsedRequest = "pr"
}
