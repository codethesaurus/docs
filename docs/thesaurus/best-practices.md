# Best Practices

These are the best practices for how to work within Code Thesaurus.

1. Code blocks must technically compile. If someone copied and pasted it, it should in theory work. (So for example, saying "a variable would go here" won't likely work, but "a_varaible_goes_here" likely would.)
2. Leave comments out of code blocks and put in comment blocks instead. (So try to keep each `code` block in the JSON files to as much code as possible, and anything you wish to note add in a `comment` block instead.)
3. Try to have code blocks match other code blocks as much as possible. The code blocks should match structurally to other similar languages, but match the style and syntax of the language you are working in..  
4. If there's more than one way to do things, you can write both in a code block, but differentiate them with a comment. Code blocks should be arrays (though for backward compatibility for older files, they can be strings).
5. Assume anyone reading it might be a beginner. Because something is "easy" or "obvious" to you may not be either to someone else. This is a learning tool and new learners might be using it.
6. Operators need to show order (prefix, postfix, infix). (So just putting "*" for multiplication is wrong, use "a * b" or "* a b" as some languages differentiate order of operators and operands.)
7. For each concept in a file, you can have `code`, `code + comment`, `not-implemented`, or `not-implemented + comment`. Other combinations are not valid and might result in errors on the build process as it checks them over.
8. In comments, you can use backticks (\`like this\`) to refer to bits of code within text. 
9. If a concept doesn't appear in a language, mark it with "not-implemented: true" and do not add equivalent code to make it happen. (So if a language doesn't have the functionality, don't write the algorithm to add it).
10. In code, there are multiple ways to solve the same problem. You can list each way to do it in the "code" block of the JSON files and use the "comment" block to differentiate when the use cases might be to pick which one. If any of them can be used, you don't have to leave a comment.
