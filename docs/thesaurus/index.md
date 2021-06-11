# Thesaurus Files

The thesaurus files are the core data elements behind Code Thesaurus. They include all the information that is aggregated together to show the user as they go to compare things.

There might be a new language you would like to see on the site or there might be incomplete parts to a language. This page hopes to address how to contribute both either or both of those.

## Terminology

We are working towards using standard terminology across the site:

* Structure - a broad category of things you can generally do in programming languages. These are like arrays, functions, classes, etc. These are in the dropdown lists on the home page.
* Concepts - these are specific things you can do in a language. This would be like create an array, sort an array, grow/shrink an array, etc. These are in the tables on the Compare or Cheat Sheet pages.
* Categories - These are concepts bundled into smaller groups. For example, on the data types page you would have categories like numerical data types, string and character data types, complex number types, etc.
* Features - Deprecated. It was used interchangably with structures and concepts.

There might be old references, both in code and in documentation, that interchangably uses "structures" and "concepts". We're working to remove these. If you find one that's wrong, vague, or ambiguous, please let us know. You're welcome to update the [docs on Github](https://github.com/codethesaurus/docs) too!

## Adding New Structures to Code Thesaurus

If the language you are looking at is missing a structure to it, you are welcome to go in and add it! The structures are stored in files within the `web/thesauruses/` and then the language directory below that. The structure files are within that directory.

You can open that structure file and add or edit any language features you find that aren't implemented or implemented incorrectly.

The ID names for each of the concepts is consistent across all the languages in order to help match up the concepts with each other. The ID has to stay the same, but the other data doesn't have to (and maybe shouldn't).

If the language doesn't have that structure file yet, you should copy it over from the `_meta` directory, then customize to fit the language you are working on.

If you have any questions about it, you are welcome to ask through:

Preferred: Reach out on Twitter [@codethesaurus](https://twitter.com/codethesaurus) or add a comment to a [new or existing issue](https://github.com/codethesaurus/codethesaur.us/issues).

You could also email the core team (coreteam@codethesaur.us).

## Add an Existing Structure Set to a Language

If a structure (like string manipulation, arrays, functions, etc.) doesn't exist for any language yet, make sure the structure file exists in the `web/thesauruses/_meta` directory first. See the above section on how to copy over a concept if it does.

If it needs to be added, then you will need to follow these steps.

First, open up `web/thesauruses/meta_info.json`. In the second half of the file, there's a group called `structures`. Add your concept to that list. Make sure this concept is written to be inclusive for any language. (For example, things could be called "functions" but in other languages are "methods" or "subroutines" depending on how they work.) Then give the file a name that ends in JSON. You will create this file in the next step.

Within the `web/thesauruses/_meta` directory, create the new file you just named in the `meta_data.json` file. The file will need to have this basic structure:

```
{
  "meta": {
    "language": "language_id",
    "language_version": "version.number",
    "language_name": "Human-Friendly Language Name"
  },
  "categories": {
    "Concept Name": [
      "concept_1",
      "concept_2",
      ...
      "concept_n"
    ]
  },
  "concept_name": {
    "concept_1": {
      "name": "Concept 1 name",
      "code": "code_for_concept_1"
    },
    ...
    "concept_n": {
      "name": "Concept n name",
      "code": "code_for_concept_n"
    }
  }
}
```

Within this file you will need to edit the following items to make the file work:

* Leave the meta info alone (since it's a meta data file anyway)
* Edit the `"categories"` section (but not the word "categories") to reflect the concept you are adding and as many ways as you can think of to show examples of how that concept is implemented in any hypothetical programming language. Don't worry if you can't think of them all, as more languages are added, people will add to this file.
* Under `"categories"`, you will implement the basic structure for the JSON file to have those implementations. So the section will be the name of the concept ID you created in `meta_info.json`, then the sections within that will match the `categories` section exactly. You can look at some other meta files for how this looks.

If you are adding a concept to all of Code Thesaurus, please make a pull request for this _separately_ from a language's implementation of this. This is to make sure the file can be reviewed first before languages try to implement the changes first. 

## Add on a New Language

If a programming language doesn't exist yet in Code Thesaurus, you are welcome to add it! There are a few steps to this process.

First, you will need to open up `web/thesauruses/meta_info.json`. Within that file, the first section is for languages. Add in your language to that section in alphabetical order. From there, assign it to a directory name in the JSON structure.

After you save that file, go make a new subdirectory with same name in `web/thesauruses/`. From there, copy one or more of the files in `web/thesauruses/_meta` into the language subdirectory. From there you should be good to implement those features in that concept file!

## Contributing Your Changes

First, thank you for offering to help with Code Thesaurus! The maintainers are very appreciative of this work you are doing!

Second, create a pull request (PR) with your changes. Any meta language information should be made in separate PRs from language implementation changes.

Third, make a pull request against Code Thesaurus's main branch. (Your branch can be named whatever you like.)

As you write up your pull request, please be specific about the changes you have made. The provided PR template should help. Make sure the PR has a good title and in the description it talks about the changes that were made and the expected results of the changes. This is to ensure it can be tested properly by the maintainers.

The maintainers will review your PR and probably make constructive suggestions. This is not a reflection on your development skills but rather just to ensure compatibility with other languages or other parts of the system. You may need to make additional changes based on that feedback. But similarly you may also have ideas or your own considerations on how you did things, so you should share those in the PR or in comments too! It's a group effort!

Then finally, the maintainers can merge in your changes. Congrats! You are now a part of Code Thesaurus history!
