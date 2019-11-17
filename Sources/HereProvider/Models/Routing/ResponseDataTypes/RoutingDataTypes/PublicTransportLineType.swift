import Vapor

public struct PublicTransportLineType: Content {
    public let id: ElementReferenceId
    public let lineName: String
    public let lineForeground: String?
    public let lineBackground: String?
    public let lineStyle: LineStyleType?
    public let companyName: String?
    public let companyShortName: String?
    public let companyLogo: ExternalResourceType?
    public let destination: String?
    public let flags: PublicTransportLinkFlagType?
    public let type: PublicTransportTypeType?
    public let typeName: String?
    public let stops: [PublicTransportStopType]?
}
