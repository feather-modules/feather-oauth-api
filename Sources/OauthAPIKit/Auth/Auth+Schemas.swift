import FeatherAPIKit
import FeatherOpenAPIKit

extension Oauth.Auth {

    enum Schemas {

        enum ClientId: TextSchema {
            static let description = "The client id"
            static let examples = [
                "clientId"
            ]
        }

        enum ClientSecret: TextSchema {
            static let description = "The client secret"
            static let examples = [
                "clientSecret"
            ]
        }

        enum RedirectUri: TextSchema {
            static let description =
                "The url to redirect to after successful request"
            static let examples = [
                "url.com"
            ]
        }

        enum Scope: TextSchema {
            static let description = "Scope like: read write"
            static let examples = [
                "read write"
            ]
        }

        enum State: TextSchema {
            static let description = "Request-specific data"
            static let examples = [
                "kjsngsfgn"
            ]
        }

        enum ResponseType: TextSchema {
            static let description = "Request-specific data"
            static let examples = [
                "code"
            ]
        }

        enum UserId: TextSchema {
            static let description = "Bearar token for checking the accountId"
            static let examples = [
                "code"
            ]
        }

        enum GrantType: TextSchema {
            static let description = "grant type"
            static let examples = [
                "authorization_code/client_credentials"
            ]
        }

        enum Code: TextSchema {
            static let description = "authorization code returned before"
            static let examples = [
                "uiu9879khh"
            ]
        }

        enum AccessToken: TextSchema {
            static let description = "Access token aka JWT"
            static let examples = [
                "uiu9879khh.rtzrtz.6hdhfgh"
            ]
        }

        enum TokenType: TextSchema {
            static let description = "Access token type"
            static let examples = [
                "Bearer"
            ]
        }

        enum ExpiresIn: IntSchema {
            static let description = "Expires in"
            static let minimumValue: Int? = 3600
        }

        enum LocationHeader: TextSchema {
            static let description = "Location header"
            static let examples: [String] = [
                "http://localhost:8080/redirect?code=asdasfg"
            ]
        }

        enum ReturnRedirectUri: BooleanSchema {
            static let description = "return redirect with 200 or 302"
            static let defaultValue = false
        }

        enum Redirect200Response: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("redirect_uri", RedirectUri.self, required: false)
            ]
        }

        enum AuthorizePostRequest: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("client_id", ClientId.self, required: false),
                .init("redirect_uri", RedirectUri.self, required: false),
                .init("scope", Scope.self, required: false),
                .init("state", State.self, required: false),
                .init("response_type", ResponseType.self, required: false),
                .init("user_id", UserId.self, required: false),
            ]
        }

        enum TokenPostRequest: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("grant_type", GrantType.self, required: false),
                .init("client_id", ClientId.self, required: false),
                .init("client_secret", ClientSecret.self, required: false),
                .init("code", Code.self, required: false),
                .init("redirect_uri", RedirectUri.self, required: false),
                .init("scope", Scope.self, required: false),
            ]
        }

        enum TokenPostResponse: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("access_token", AccessToken.self),
                .init("token_type", TokenType.self),
                .init("expires_in", ExpiresIn.self),
                .init("scope", Scope.self),
            ]
        }

    }

}
