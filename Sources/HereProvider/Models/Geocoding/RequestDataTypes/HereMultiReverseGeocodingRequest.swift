public struct MultiReverseGeocodeRequest: HereGeocodeRequest {
    let level: String
    let minResults: Int
    let mode: HereMode
    let sortBy
}
