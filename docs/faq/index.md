# Frequently Asked Questions

*This should be a crowd curated list that could apply to people curious about the production of codethesaur.us on the front or back end. Questions that might be overlooked in guides or maybe have not found their way to guides yet.*

## What does "Not implemented in this language" mean exactly?
This means that this concept is a thing you can look up on Code Thesaurus, but doesn't necessarily mean the language can do it. So not all languages can do all things other languages can, so this is a way of marking in the file "we're looked at this in the file, and this language can't do it." 
In the code for a language, contributors would identify this concept with a `"not-implemented": true`

## If I'm editing a language, but I don't know how to implement a feature, what do I do?
You can leave it blank. For example, 

```json
"some_function_i_dont_know": {

        },
```
## What kinds of languages and structures are / can be included?
This is detailed in [Architecture](project_architecture.md)

## How can a concept be represented for a language? How does that look in the code?

1. concept exists (and has example code)

```json
"some_concept": {
    "name":"some concept name",
    "code": ["this language code interpretation of concept"],
    "comment": "optional comment",
        },
```
2. concept doesn't exist (therefore can't have code)

```json
"some_concept": {
    "name":"some concept name",
    "comment": "optional comment",
    "not-implemented": true
        },
```
3. unknown state (the ID got added but wasn't added to the file)

```json
"some_concept": {
    "name":"some concept name"
        },
```
4. concept exists (but no example code)

```json
"some_concept": {
    "name":"some concept name",
    "comment": "optional comment",
        },
```

## What if a developer could implement a workaround with code in the language to represent a concept? 
Code Thesaurus is a reference tool. It should explain how the language works and exists. This is not to invent functionality. If the concepts don't exist natively, they are not implemented in the language. Four our purposes, they should all have "code" deleted and replaced with `"not-implemented": true`.