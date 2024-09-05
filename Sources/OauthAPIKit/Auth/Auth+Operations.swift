import FeatherOpenAPIKit

extension Oauth.Auth {

    enum Operations {

        enum AuthorizeGet: Operation {
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "start authorize"
            static let description = "start authorize"
            static let parameters: [Parameter.Type] = [
                Parameters.ClientId.self,
                Parameters.RedirectUri.self,
                Parameters.Scope.self,
                Parameters.State.self,
                Parameters.ResponseType.self,
                Parameters.ReturnRedirectUri.self,
            ]
            static let responses: [OperationResponse] = [
                .ok(Responses.Redirect200Response.self),
                .found(Responses.RedirectResponse.self),
                .badRequest,
                .unauthorized,
                .forbidden,
            ]
        }

        enum AuthorizePost: Operation {
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "get authorize code"
            static let description =
                "get authorize code and return it with redirect"

            static let parameters: [Parameter.Type] = [
                Parameters.ReturnRedirectUri.self
            ]
            static let requestBody: RequestBody.Type? = RequestBodies
                .AuthorizePostRequest.self
            static let responses: [OperationResponse] = [
                .ok(Responses.Redirect200Response.self),
                .found(Responses.RedirectResponse.self),
                .badRequest,
                .unauthorized,
                .conflict,
                .forbidden,
            ]
        }

        enum TokenReturn: Operation {
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "returns a JWT"
            static let description =
                "exchange authorization code for JWT or get server JWT"
            static let requestBody: RequestBody.Type? = RequestBodies
                .TokenPostRequest.self
            static let responses: [OperationResponse] = [
                .ok(Responses.TokenPostResponse.self),
                .badRequest,
                .unauthorized,
                .conflict,
                .forbidden,
            ]
        }

    }
}
