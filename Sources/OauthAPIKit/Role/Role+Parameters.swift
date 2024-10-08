import FeatherOpenAPIKit

extension Oauth.Role {

    public enum Parameters: Component {

        enum Key: PathParameter {
            static let name = "roleKey"
            static let description = "Oauth role key"
            static let schema: Schema.Type = Schemas.Key.self
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
