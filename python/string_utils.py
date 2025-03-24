def to_snake_case(text: str) -> str:
    """Convert a string to snake_case.

    Example:
    print(to_snake_case("HelloWorld"))   # hello_world
    """
    import re
    return re.sub(r'(?<!^)(?=[A-Z])', '_', text).lower()


def to_camel_case(text: str) -> str:
    """Convert a string to camelCase.

    Example:
    print(to_camel_case("hello_world"))  # helloWorld
    """
    parts = text.split('_')
    return parts[0] + ''.join(word.capitalize() for word in parts[1:])
