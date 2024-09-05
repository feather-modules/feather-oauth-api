import FeatherOpenAPIKit

extension Oauth.Auth {

    enum RequestBodies {

        enum AuthorizePostRequest: FormBody {
            static let description = "get authorization code request body"
            static let schema: Schema.Type = Schemas.AuthorizePostRequest.self
        }

        enum TokenPostRequest: FormBody {
            static let description = "exchange token request body"
            static let schema: Schema.Type = Schemas.TokenPostRequest.self
        }

    }
}
