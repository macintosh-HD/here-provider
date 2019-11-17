import Vapor

public struct SourceAttributionType: Content {
    public let attribution: String
    public let supplier: SourceSupplierType
}

public struct SourceSupplierType: Content {
    public let title: String
    public let href: String
    public let note: SourceSupplierNoteType
}

public struct SourceSupplierNoteType: Content {
    public let type: SourceSupplierNoteTypeType
    public let text: String
    public let href: String
    public let hrefText: String
}
