@testable import HereProvider
import Vapor

extension Application {
    static func testable(envArgs: [String]? = nil) throws -> Application {
        var config = Config.default()
        var services = Services.default()
        var env = Environment.testing
        if let environmentArguments = envArgs {
            env.arguments = environmentArguments
        }
        
        let hereConfig = HereConfig(appId: Environment.get("HERE_APP_ID")!, appCode: Environment.get("HERE_APP_CODE")!)
        services.register(hereConfig)
        
        let app = try Application(config: config, environment: env, services: services)
        try App.boot(app)
        
        return app
    }
}
