# Code Thesaurus Architecture

The project is broken down into several parts. The idea is to make it as easy to edit by abstracting out as much of the site from the language information as possible, then also to separate out all of the language information so they're as easy to work with as possible without needing to know additional languages.

## Basic idea

The main way this is broken down will be:

* Website (codethesaur.us)
* Programming language data files
* (later) meta data for other types of comparable data

## Website

(info about site goes here)

## Considerations

The following may seem complex, but there are multiple issues that come to light quite quickly:

1. Some languages are easy to compare (like C++, Java, C#) and others that aren't (like Haskell, Perl, APL, Whitespace, LOLCODE)
2. Some languages should be compared against their versions, especially for those wanting to upgrade their code (ex: Python 2 vs Python 3, PHP 5 vs 7)
3. Some languages have separate variations of the same thing (ex: ANSI C vs Microsoft C, .Net vs .Net Core languages, C64 BASIC vs QBASIC vs Visual Basic)
4. Incomplete language should still be searchable. (If something isn't implemented in a JSON file, the concept may not exist but also just might not have been added yet. This should be distinguished somehow.)
5. Data files should be easy to contribute to but powerful enough to fully describe language concepts/structures
6. The project should be as easy to contribute to if you have one month of programming experience or 20 years or programming experience.
7. Someone who wants to contribute to one language shouldn't be put off by having to filter through other languages.
8. Some languages are compiled, some are interpreted. Some are designed for desktop/mobile apps and some are designed to run within browsers, are embedded, or have other constraints. These should be accounted for when comparing languages.
9. Some concepts exist under different names (ex: Functions, subroutines, and methods are all the same thing)
10. Languages have constructs that aren't built the same and should be clarified. (Ex: Arrays/lists can always be ints and start at 0, but some start at 1, or might be strings/hashes, or could literally be any other data type)
11. It should be simple and easy to add a new language or version.
12. The end user should have an easy to use site that's accessible.
13. Opt for accessibility and ease of use over fancy frameworks.

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

I haven't determined yet if it makes more sense to have a repo for language data vs individual repos for individual languages. Either way, something like a CI tool and/or Git Submodules can combine them together.

## Why JSON?

I wanted a combination of easy to read for a human, easy to parse for a computer, and not a pain in the butt to deal with formatting of strings, code blobs, and more things. YAML would be great except for the formatting, XML is just verbose, and some form of custom file would require training. There's other serializable formats too, but JSON seemed easiest.

## What Should Be Included?

I'd love everything to be included. This can be:

* The most common languages (like Java, C, Python, C++, C#, VB.Net, Ruby, JavaScript, PHP, Go, Swift)
* Languages not as common anymore (like Pascal, Delphi, Objective-C, Perl)
* All different breeds of languages (ex: JavaScript for browsers, JavaScript for Node, TypeScript, ECMAScript, etc.)
* Common versions in use as well as older versions for historical records (ex: Ruby 1 through 5, PHP 1-5 and 7, Python 1's, 2's, 3's)
* Esoteric languages (ex: Whitespace, Picasso, LOLCODE, Brainf***, Piet, etc.)

## Design Updates

It's still the early stages, and things can change. I'll also probably forget things somewhere in here. Reach out if you're interested in helping make further improvements or if there's some piece I've forgotten.
