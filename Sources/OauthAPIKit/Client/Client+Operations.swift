import FeatherAPIKit
import FeatherOpenAPIKit

extension Oauth.Client {

    enum Operations {

        enum List: Operation {
            static let security: [SecurityScheme.Type] = .shared
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "List Oauth Clients"
            static let description = "List available Oauth Clients"
            static let parameters: [Parameter.Type] =
                [
                    Parameters.List.Sort.self
                ] + Feather.Core.Parameters.List.parameters
            static let responses: [OperationResponse] = [
                .ok(Responses.List.self),
                .badRequest,
                .unauthorized,
                .forbidden,
            ]
        }

        enum Create: Operation {
            static let security: [SecurityScheme.Type] = .shared
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "Create an Oauth Client"

            static let description = """
                    Creates a new Oauth Client.
                    For the "app" type the ClientSecret is not generated and saved.
                    For the "api" type "redirectUri" and "loginRedirectUri" are not needed and not saved if added.
                """
            static let requestBody: RequestBody.Type? = RequestBodies
                .Create.self
            static let responses: [OperationResponse] = [
                .ok(Responses.Detail.self),
                .badRequest,
                .unauthorized,
                .forbidden,
                .unsupportedMediaType,
                .unprocessableContent,
            ]
        }

        enum Delete: Operation {
            static let security: [SecurityScheme.Type] = .shared
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "Delete one Oauth Client"
            static let description = "Delete one Oauth Client using identifier"
            static let responses: [OperationResponse] = [
                .noContent,
                .badRequest,
                .unauthorized,
                .forbidden,
                .notFound,
                .unprocessableContent,
            ]
        }

        // MARK: -

        enum Detail: Operation {
            static let security: [SecurityScheme.Type] = .shared
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "Oauth Client details"
            static let description = "Get the details of an oauth client"
            static let responses: [OperationResponse] = [
                .ok(Responses.Detail.self),
                .badRequest,
                .unauthorized,
                .forbidden,
                .notFound,
            ]
        }

        enum Update: Operation {
            static let security: [SecurityScheme.Type] = .shared
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "Update an Oauth Client"
            static let description = "Updates an Oauth Client"
            static let requestBody: RequestBody.Type? = RequestBodies
                .Update.self
            static let responses: [OperationResponse] = [
                .ok(Responses.Detail.self),
                .badRequest,
                .unauthorized,
                .forbidden,
                .notFound,
                .unsupportedMediaType,
                .unprocessableContent,
            ]
        }

        enum Patch: Operation {
            static let security: [SecurityScheme.Type] = .shared
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "Patch an Oauth Client"
            static let description = "Patch a given Oauth Client"
            static let requestBody: RequestBody.Type? = RequestBodies
                .Patch.self
            static let responses: [OperationResponse] = [
                .ok(Responses.Detail.self),
                .badRequest,
                .unauthorized,
                .forbidden,
                .notFound,
                .unsupportedMediaType,
                .unprocessableContent,
            ]
        }
    }
}
