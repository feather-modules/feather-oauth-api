import FeatherOpenAPIKit

extension Oauth.Auth {

    enum Parameters {

        enum ClientId: QueryParameter {
            static let name = "client_id"
            static let description = "clientId"
            static let schema: Schema.Type = Schemas.ClientId.self
            static let required = false
        }

        enum RedirectUri: QueryParameter {
            static let name = "redirect_uri"
            static let description = "Url to redirect to"
            static let schema: Schema.Type = Schemas.RedirectUri.self
            static let required = false
        }

        enum Scope: QueryParameter {
            static let name = "scope"
            static let description = "scope"
            static let schema: Schema.Type = Schemas.Scope.self
            static let required = false
        }

        enum State: QueryParameter {
            static let name = "state"
            static let description = "state"
            static let schema: Schema.Type = Schemas.State.self
            static let required = false
        }

        enum ResponseType: QueryParameter {
            static let name = "response_type"
            static let description = "responseType"
            static let schema: Schema.Type = Schemas.ResponseType.self
            static let required = false
        }

        enum ReturnRedirectUri: QueryParameter {
            static let name = "return_redirect_uri"
            static let description = "true/false to return with 200/302"
            static let schema: Schema.Type = Schemas.ReturnRedirectUri.self
            static let required = false
        }
    }

}
