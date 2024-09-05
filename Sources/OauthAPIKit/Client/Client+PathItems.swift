import FeatherOpenAPIKit

extension Oauth.Client {

    enum PathItems {

        enum Main: PathItem {
            static let path: Path = Oauth.Client.path
            static let get: Operation.Type? = Operations.List.self
            static let post: Operation.Type? = Operations.Create.self
        }

        enum Identified: PathItem {
            static let path: Path = Main.path / Parameters.ClientId.path
            static let parameters: [Parameter.Type] = [
                Parameters.ClientId.self
            ]
            static let delete: Operation.Type? = Operations.Delete.self
            static let get: Operation.Type? = Operations.Detail.self
            static let put: Operation.Type? = Operations.Update.self
            static let patch: Operation.Type? = Operations.Patch.self
        }
    }
}
