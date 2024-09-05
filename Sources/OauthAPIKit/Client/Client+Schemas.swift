import FeatherAPIKit
import FeatherOpenAPIKit

extension Oauth.Client {

    enum Schemas {

        enum Name: TextSchema {
            static let description =
                "A private name for the client for better identification"
            static let examples = [
                "My client"
            ]
        }

        enum ClientType: EnumSchema {
            static let description = "The type of the client"
            static let allowedValues = ["app", "api"]
            static let examples = [
                "app"
            ]
        }

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
            static let description = "The client redirects to this url"
            static let examples = [
                "http://localhost:8080/redirect"
            ]
        }

        enum LoginRedirectUri: TextSchema {
            static let description = "Redirect uri for the login screen"
            static let examples = [
                "http://localhost:8080/redirect"
            ]
        }

        enum Issuer: TextSchema {
            static let description = "The issuer is the authorization server"
            static let examples = [
                "http://accounts.com"
            ]
        }

        enum Subject: TextSchema {
            static let description = "The subject of the access token"
            static let examples = [
                "user/client/userId"
            ]
        }

        enum Audience: TextSchema {
            static let description =
                "Identifies the intended audience for the access token"
            static let examples = [
                "http://drive.com"
            ]
        }

        enum PrivateKey: TextSchema {
            static let description = "A private key used to sign the jwt"
            static let examples = [
                "privateKey"
            ]
        }

        enum PublicKey: TextSchema {
            static let description = "A public key used to verify the jwt"
            static let examples = [
                "publicKey"
            ]
        }
        
        public enum ServerRoles: ArraySchema {
            public static let description = "Oauth server roles"
            public static let items: Schema.Type = Oauth.Role.Schemas.Reference
                .self
        }

        // MARK: -

        enum List: ObjectSchema {

            enum Item: ObjectSchema {
                static let description = "OauthClient list item"
                static let properties: [ObjectSchemaProperty] = [
                    .init("clientId", ClientId.self),
                    .init("name", Name.self),
                    .init("type", ClientType.self),
                ]
            }

            enum Items: ArraySchema {
                static let description = "OauthClient list items"
                static let items: Schema.Type = Item.self
            }

            enum Sort: EnumSchema {
                static let description = "The sort key for the list"
                static let allowedValues = ["name", "type"]
                static let defaultValue = "name"
            }

            static let description = "OauthClient list"
            static let properties: [ObjectSchemaProperty] =
                [
                    .init("items", Items.self),
                    .init("sort", Sort.self, required: false),
                ] + Feather.Core.Schemas.List.properties
        }

        // MARK: -

        enum Detail: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("clientId", ClientId.self),
                .init("name", Name.self),
                .init("type", ClientType.self),
                .init("clientSecret", ClientSecret.self, required: false),
                .init("redirectUri", RedirectUri.self, required: false),
                .init(
                    "loginRedirectUri",
                    LoginRedirectUri.self,
                    required: false
                ),
                .init("issuer", Issuer.self),
                .init("subject", Subject.self),
                .init("audience", Audience.self),
                .init("privateKey", PrivateKey.self),
                .init("publicKey", PublicKey.self),
                .init("serverRoles", ServerRoles.self),
            ]
        }

        enum Create: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("name", Name.self),
                .init("type", ClientType.self),
                .init("redirectUri", RedirectUri.self, required: false),
                .init(
                    "loginRedirectUri",
                    LoginRedirectUri.self,
                    required: false
                ),
                .init("issuer", Issuer.self),
                .init("subject", Subject.self),
                .init("audience", Audience.self),
                .init("serverRoles", ServerRoles.self),
            ]
        }

        enum Update: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("name", Name.self),
                .init("type", ClientType.self),
                .init("clientSecret", ClientSecret.self, required: false),
                .init("redirectUri", RedirectUri.self, required: false),
                .init(
                    "loginRedirectUri",
                    LoginRedirectUri.self,
                    required: false
                ),
                .init("issuer", Issuer.self),
                .init("subject", Subject.self),
                .init("audience", Audience.self),
                .init("privateKey", PrivateKey.self),
                .init("publicKey", PublicKey.self),
                .init("serverRoles", ServerRoles.self),
            ]
        }

        enum Patch: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("name", Name.self, required: false),
                .init("type", ClientType.self, required: false),
                .init("clientSecret", ClientSecret.self, required: false),
                .init("redirectUri", RedirectUri.self, required: false),
                .init(
                    "loginRedirectUri",
                    LoginRedirectUri.self,
                    required: false
                ),
                .init("issuer", Issuer.self, required: false),
                .init("subject", Subject.self, required: false),
                .init("audience", Audience.self, required: false),
                .init("privateKey", PrivateKey.self, required: false),
                .init("publicKey", PublicKey.self, required: false),
                .init("serverRoles", ServerRoles.self, required: false),
            ]
        }

    }

}
