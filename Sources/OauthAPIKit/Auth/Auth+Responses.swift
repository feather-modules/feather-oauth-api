import FeatherOpenAPIKit

extension Oauth.Auth {

    enum Responses {

        enum RedirectResponse: Response {
            static let description = "Redirect response"
            static let headers: [Header.Type] = [
                Headers.Location.self
            ]
        }

        enum Redirect200Response: JSONResponse {
            static let description = "Redirect response"
            static let schema: Schema.Type = Schemas.Redirect200Response.self
        }

        enum TokenPostResponse: JSONResponse {
            static let description = "Code exchange response object"
            static let schema: Schema.Type = Schemas.TokenPostResponse.self
        }

    }
}
