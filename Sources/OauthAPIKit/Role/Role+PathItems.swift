import FeatherOpenAPIKit

extension Oauth.Role {

    enum PathItems {

        enum Main: PathItem {
            static let path: Path = Oauth.Role.path
            static let get: Operation.Type? = Operations.List.self
        }

    }
}
