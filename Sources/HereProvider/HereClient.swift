import Vapor

public final class HereClient: Service {
    let httpClient: Client
    let appID: String
    let appCode: String
    
    let geocodingEndpoint = "https://geocoder.api.here.com/6.2/geocode."
    let reverseGeocodingEndpoint = "https://reverse.geocoder.api.here.com/6.2/reversegeocode."
    
    public init(httpClient: Client, config: HereConfig) {
        self.httpClient = httpClient
        self.appID = config.appId
        self.appCode = config.appCode
    }
    
    public func geocode(address: String) throws -> Future<SearchResponseType> {
        let address = address.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let requestURL = try createRequestURL(endpoint: geocodingEndpoint, format: .json, appID: appID, appCode: appCode, searchtext: address)
        
        return httpClient.get(requestURL).flatMap { response in
            do {
                return try response.content.decode(SearchResponseType.self)
            } catch {
                throw Abort(.internalServerError)
            }
        }
    }
    
    public func reverseGeocode(coordinate: Coordinate, proxRadius: Int = 5, maxResults: Int = 1) throws -> Future<SearchResponseType> {
        let requestURL = try createRequestURL(endpoint: reverseGeocodingEndpoint, format: .json, appID: appID, appCode: appCode, pos: coordinate, mode: .retrieveAdresses, proxRadius: proxRadius, maxResults: maxResults)
        
        return httpClient.get(requestURL).flatMap { response in
            do {
                return try response.content.decode(SearchResponseType.self)
            } catch {
                throw Abort(.internalServerError)
            }
        }
    }
    
    private func createRequestURL(endpoint: String, format: HereFormats, appID: String, appCode: String, pos: Coordinate? = nil, mode: HereMode? = nil, proxRadius: Int? = nil, minResults: Int? = nil, maxResults: Int? = nil, addressAttributes: [HereAddressAttributes] = [], language: String? = nil, level: HereLevel? = nil, locationAttributes: [HereLocationAttributes] = [], responseAttributes: [HereResponseAttributes] = [], searchtext: String? = nil) throws -> URL {
        var urlString = endpoint + format.rawValue
        
        urlString += "?app_id=\(appID)&app_code=\(appCode)&jsonattributes=1"
        
        if let posNotNil = pos {
            urlString += "&pos=\(posNotNil.description),0"
            
            if let proxRadiusNotNil = proxRadius {
                urlString += "&prox=\(posNotNil.description),\(proxRadiusNotNil)"
            }
        }
        
        if let modeNotNil = mode {
            urlString += "&mode=\(modeNotNil.rawValue)"
        }
        
        if let minResultsNotNil = minResults, minResultsNotNil >= 0 {
            urlString += "&minresults=\(minResultsNotNil)"
        }
        
        if let maxResultsNotNil = maxResults, maxResultsNotNil >= minResults ?? 1 {
            urlString += "&maxresults=\(maxResultsNotNil)"
        }

        if addressAttributes.count > 0 {
            var addressAttributesList: String = addressAttributes.reduce("") { (res, adat) -> String in
                res + "," + adat.rawValue
            }
            
            addressAttributesList.removeFirst()
            
            urlString += "&addressattributes=\(addressAttributesList)"
        }
        
        if let level = level {
            urlString += "&level=\(level.rawValue)"
        }
        
        if locationAttributes.count > 0 {
            var locationAttributesList: String = locationAttributes.reduce("") { (res, loat) -> String in
                res + "," + loat.rawValue
            }
            
            locationAttributesList.removeFirst()
            
            urlString += "&locationattributes=\(locationAttributesList)"
        }
        
        if responseAttributes.count > 0 {
            var responseAttributesList: String = responseAttributes.reduce("") { (res, rpat) -> String in
                res + "," + rpat.rawValue
            }
            
            responseAttributesList.removeFirst()
            
            urlString += "&responseattributes=\(responseAttributesList)"
        }
        
        if let searchtextNotNil = searchtext {
            urlString += "&searchtext=\(searchtextNotNil)"
        }
        
        guard let result = URL(string: urlString) else {
            debugPrint(urlString)
            throw Abort(.internalServerError)
        }
        
        return result
    }
}
