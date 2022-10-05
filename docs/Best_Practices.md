<!-- 
There are cases where I see multiple people tackling adding in a language's concepts, but they do it in vastly different ways. There needs to be a page that can be shown to people to sort of be the "truth" to how to do things. -->

# Code Thesaurus Best Practices

These are the best practices for how to write an entry to Code Thesaurus. In code there are multiple ways to solve the same problem. It will be easier to compare each language's implementation of a concept if the main difference in the `Concept Card` is in the syntax and not in the descriptions. 

These are the guidelines to fill out a concept card. 


## Best Practices

### General Overview

1. Code blocks must technically compile. It should work in production.
2. Leave comments out of code blocks and put in comment blocks instead.
3. Try to have code blocks match other code blocks as much as possible. The code blocks should match chronologically and structurally.  
4. If there's more than one way to do things, you can write both in a code block, but differentiate them with a comment
5. Anything that's not intuitive to a beginner needs a comment. Don't assume everyone knows the "easy stuff". This is a learning tool and new learners will be using it.
6. Operators need to show order (prefix, postfix, infix)
7. You should have `code`, or `code + comment`, or `not-implemented`, or `not-implemented + comment`
8. When the Implementation is test, use `hash marks` to identify key words. 

<!--
## Programming Language Data

Every programming language will be broken down into several parts, with data stored in JSON files:

* Languages available (JSON file listing other languages)
* Language name (directory)
    * Version number (directory ex: Java might be "8, 9, 10" while C++ could be "C++11, C++14, C++17" while Python could be "2.6, 2.7, 3.5")
        * Category type (JSON file; things like data types, functions, strings, file I/O, memory operations, DOM navigation, and more)
           * Meta info (language name, version number, release date, language types/categories, etc.)
           * Sub categories (ex: void functions, functions with limited parameters, functions with variable parameters, anonymous functions, etc.)
               * ID (something to standardize matching things up)
               * name (the concept/structure)
               * code (example of how it's written in code)
               * comment (explanation of parts of the code)
               * doesn't exist flag (for something that doesn't exist in a language
-->
