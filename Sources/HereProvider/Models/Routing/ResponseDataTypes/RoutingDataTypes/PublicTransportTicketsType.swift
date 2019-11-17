import Vapor

public struct PublicTransportTicketsType: Content {
    public let id: String
    public let publicTransportTicket: PublicTransportTicketType
}

public struct PublicTransportTicketType: Content {
    public let id: String
    public let ticketName: String
    public let currency: String
    public let price: Double
}
