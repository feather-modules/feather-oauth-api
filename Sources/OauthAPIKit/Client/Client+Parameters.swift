import FeatherOpenAPIKit

extension Oauth.Client {

    public enum Parameters {

        public enum ClientId: PathParameter {
            public static let name = "clientId"
            public static let description = "OauthClient identifier"
            public static let schema: Schema.Type = Schemas.ClientId.self
        }

        enum List {
            enum Sort: QueryParameter {
                static let name = "sort"
                static let description = "Sort by parameter"
                static let schema: Schema.Type = Schemas.List.Sort.self
            }
        }
    }
}
