# Best Practices

These are the best practices for working within Code Thesaurus.

## Code Blocks

1. Code blocks must technically compile. If someone copied and pasted the code, it should in theory work. (For example, saying "a variable would go here" won't likely work, but "a_variable_goes_here" likely would.)
2. Try to have code blocks match other code blocks as much as possible. They should be structurally similar to other comparable languages, but match the style and syntax of the language you're working in.
3. If there's more than one way to solve a problem, you can list each way in the `code` block. Code blocks should be arrays when they contain multiple examples (though for backward compatibility, older files can use a string). Use the `comment` block to differentiate the examples and explain when someone might pick one over another. If any of them can be used, you don't have to leave a comment.
4. Operators need to show their order (prefix, postfix, infix). Just putting "*" for multiplication is wrong; use "a * b" or "* a b", as some languages differentiate the order of operators and operands.

## Comments

5. Keep comments out of code blocks and put them in `comment` blocks instead. Keep each `code` block in the JSON files to as much code as possible, and put anything you wish to note in a `comment` block.
6. In comments, you can use backticks (`like this`) to refer to bits of code within the text.

## Concept Metadata

7. For each concept in a file, you can have `code`, `code + comment`, `not-implemented`, or `not-implemented + comment`. The optional `name` field is also allowed. Other combinations are not valid and might result in errors when the build process checks them over.
8. If a concept doesn't exist in a language, mark it with `"not-implemented": true` and don't add equivalent code to make it happen. If a language doesn't have the functionality, don't write an algorithm to add it.
9. In language data files, concepts live under a `concepts` object. A top-level `categories` object belongs in the `_meta` structure files only and is deprecated in language data files, so don't copy it over when generating a structure file.

## Keep the Reader in Mind

10. Assume anyone reading it might be a beginner. What's "easy" or "obvious" to you may not be to someone else. This is a learning tool and new learners might be using it.