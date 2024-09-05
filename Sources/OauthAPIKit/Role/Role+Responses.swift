import FeatherOpenAPIKit

extension Oauth.Role {

    enum Responses {

        enum List: JSONResponse {
            static let description = "Oauth Role list object"
            static let schema: Schema.Type = Schemas.List.self
        }

    }
}
