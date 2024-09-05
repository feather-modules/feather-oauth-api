import FeatherOpenAPIKit

extension Oauth.Auth {

    enum PathItems {

        enum Main: PathItem {
            static let path: Path = Oauth.path
            static let get: Operation.Type? = Operations.AuthorizeGet.self
            static let post: Operation.Type? = Operations.AuthorizePost.self
        }

        enum TokenReturn: PathItem {
            static let path: Path = Oauth.path / "token"
            static let post: Operation.Type? = Operations.TokenReturn.self
        }

    }
}
