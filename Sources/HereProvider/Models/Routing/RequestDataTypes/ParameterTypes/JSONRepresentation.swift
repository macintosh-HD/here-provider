import Vapor

public enum JSONRepresentation: Int, Content {
    case lowerCaseFirstCharacter = 1
    case includeTypeElement = 8
    case pluralNaming = 16
    case flattenListsContainingPairs = 32
    case flattenListsContainingTriplets = 128
}
