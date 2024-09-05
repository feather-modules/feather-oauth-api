import FeatherAPIKit
import FeatherOpenAPIKit
import SystemAPIKit

extension Oauth.Role {

    public enum Schemas: Component {

        enum Key: TextSchema {
            static let description = "Key of the role"
            static let examples = [
                "manager"
            ]
        }

        enum Name: TextSchema {
            static let description = "Name of the role"
            static let examples = [
                "Manager"
            ]
        }

        enum Notes: TextSchema {
            static let description = "Description of the role"
            static let examples = [
                "Manager role"
            ]
        }

        // MARK: -

        enum Reference: ObjectSchema {
            static let description = ""
            static let properties: [ObjectSchemaProperty] = [
                .init("key", Key.self),
                .init("name", Name.self),
            ]
        }

        // MARK: - list

        enum List: ObjectSchema {

            enum Item: ObjectSchema {
                static let description = "Role list item"
                static let properties: [ObjectSchemaProperty] = [
                    .init("key", Key.self),
                    .init("name", Name.self),
                ]
            }

            enum Items: ArraySchema {
                static let description = "Role list items"
                static let items: Schema.Type = Item.self
            }

            enum Sort: EnumSchema {
                static let description = "The sort key for the list"
                static let allowedValues = ["key", "name"]
                static let defaultValue = "key"

            }

            static let description = "Role list"
            static let properties: [ObjectSchemaProperty] =
                [
                    .init("items", Items.self),
                    .init("sort", Sort.self, required: false),
                ] + Feather.Core.Schemas.List.properties
        }

    }
}
