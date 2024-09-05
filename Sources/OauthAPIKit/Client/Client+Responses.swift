import FeatherOpenAPIKit

extension Oauth.Client {

    enum Responses {

        enum Detail: JSONResponse {
            static let description = "OauthClient detail object"
            static let schema: Schema.Type = Schemas.Detail.self
        }

        enum List: JSONResponse {
            static let description = "OauthClient list object"
            static let schema: Schema.Type = Schemas.List.self
        }
    }
}
