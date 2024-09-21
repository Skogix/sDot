# Simple .norg Syntax Guide

## Symbols in Norg

Here is a list of symbols used in the Norg syntax:

- `*` : Headings
- `-` : Unordered Lists
- `~` : Ordered Lists
- `>` : Quotes
- `$` : Definitions
- `^` : Footnotes
- `:` : Table cells
- `%` : Attributes
- `=` : Macro Tags
- `|` : Standard Ranged Tags
- `@` : Verbatim Ranged Tags
- `.` : Infirm Tag
- `+` : Carryover Tags
- `#` : Linkables
- `{}` : Link Location
- `[]` : Link Description
- `<>` : Inline Link Targets

## Headings
- Use asterisks (*) to denote headings.
- The number of asterisks indicates the heading level.
  - Example:
    ```
    * Heading Level 1
    ** Heading Level 2
    *** Heading Level 3
    ```

## Lists
- Unordered lists use hyphens (-).
- Ordered lists use tildes (~).
  - Example:
    ```
    - Unordered item
    ~ Ordered item
    ```

## Links
- Use curly braces `{}` to create links.
  - Example:
    ```
    {https://example.com}
    ```

## Bold and Italics
- Use asterisks (*) for bold text.
- Use slashes (/) for italic text.
  - Example:
    ```
    *bold text*
    /italic text/
    ```

## Code Blocks
- Use `@code` followed by the language for code blocks.
  - Example:
    ```
    @code python
    print("Hello, World!")
    @end
    ```

## Comments
- Use `|comment` for multi-line comments.
  - Example:
    ```
    |comment
    This is a comment.
    |end
    ```

## Tables
- Use colons (:) to define table cells.
  - Example:
    ```
    : Header 1 : Header 2
    : Cell 1   : Cell 2
    ```

This guide provides a basic overview of the .norg syntax for creating structured documents.
