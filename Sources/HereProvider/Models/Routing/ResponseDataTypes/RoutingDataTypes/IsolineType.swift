import Vapor

public struct IsolineType: Content {
    public let range: String
    public let component: [IsolineComponentType]
    public let connection: [IsolineConnectionType]
}

public struct IsolineComponentType: Content {
    public let id: ElementReferenceType
    public let shape: GeoPolylineType
}

public struct IsolineConnectionType: Content {
    public let fromId: ElementReferenceType
    public let toId: ElementReferenceType
    public let shape: GeoPolylineType
}
