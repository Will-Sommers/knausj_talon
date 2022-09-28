from talon import Module, Context, actions, ui, imgui, settings
mod = Module()
ctx = Context()
ctx.matches = r"""
mode: user.typescript
mode: user.auto_lang
and code.language: typescript
"""
# tbd
# ctx.lists["user.code_functions"] = {
#     "integer": "int.TryParse",
#     "print": "Console.WriteLine",
#     "string": ".ToString",
# }

mod.list("code_chain_function", "Function to use in a chain")
#     "print": "Console.WriteLine",

#     "string": ".ToString",
ctx.lists["user.code_chain_function"] = {
# }
    "concat": "concat",
    "filter": "filter",
    "find": "find",
    "flat map": "flatMap",
    "for each": "forEach",
    "includes": "includes",
    "map": "map",
    "push": "push",
    "some": "some",
    "split": "split",
    "substring": "substring",
    "then": "then",
}

ctx.lists["user.code_functions"] = {
    "entries": "Object.entries",
    "flatten": "flatten",
    "from entries": "Object.fromEntries",
    "keys": "Object.keys",
    "max": "Math.max",
    "min": "Math.min",
    "abs": "Math.abs",
    "round": "Math.round",
    "floor": "Math.floor",
    "print": "console.log",
    "values": "Object.values",
    #     "integer": "int.TryParse",,
    #     "string": ".ToString",
}

ctx.lists["user.code_type"] = {
    "bool": "boolean",
    "integer": "int",
    "string": "string",
    "null": "null",
    "undefined": "undefined",
    "unknown": "unknown",
    "number": "number",
    "any": "any",
    "never": "never",
    "void": "void",
}

ctx.lists["user.code_keyword"] = {
    "a sink": "async ",
    "await": "await ",
    "break": "break",
    "cast": " as ",
    "class": "class ",
    "const": "const ",
    "continue": "continue",
    "default": "default ",
    "export": "export ",
    "extends": " extends ",
    "false": "false",
    "function": "function ",
    "implements": " implements ",
    "import": "import ",
    "interface": "interface ",
    "let": "let ",
    "new": "new ",
    "null": "null",
    "private": "private ",
    "protected": "protected ",
    "public": "public ",
    "return": "return ",
    "throw": "throw ",
    "true": "true",
    "try": "try ",
    "type": "type ",
    "undefined": "undefined",
    "yield": "yield ",
}


@ctx.action_class("user")
class UserActions:
    def code_private_function(text: str):
        """Inserts private function declaration"""
        result = "private function {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_private_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    # def code_private_static_function(text: str):
    #     """Inserts private static function"""
    #     result = "private static void {}".format(
    #         actions.user.formatted_text(
    #             text, settings.get("user.code_private_function_formatter")
    #         )
    #     )

    #     actions.user.code_insert_function(result, None)

    def code_protected_function(text: str):
        result = "protected function {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_protected_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    # def code_protected_static_function(text: str):
    #     result = "protected static void {}".format(
    #         actions.user.formatted_text(
    #             text, settings.get("user.code_protected_function_formatter")
    #         )
    #     )

    #     actions.user.code_insert_function(result, None)

    def code_public_function(text: str):
        result = "public function {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_public_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    # def code_public_static_function(text: str):
    #     result = "public static void {}".format(
    #         actions.user.formatted_text(
    #             text, settings.get("user.code_public_function_formatter")
    #         )
    #     )

    #     actions.user.code_insert_function(result, None)

    def code_insert_type_annotation(type: str):
        actions.insert(f": {type}")

    def code_insert_return_type(type: str):
        actions.insert(f": {type}")

    def code_operator_equal():
        actions.auto_insert(" === ")

    def code_operator_not_equal():
        actions.auto_insert(" !== ")