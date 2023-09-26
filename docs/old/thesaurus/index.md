# Thesaurus Files

The thesaurus files are the core data elements behind Code Thesaurus. They include all the information that is aggregated together to show the user as they go to compare things.

There might be a new language you would like to see on the site or there might be incomplete parts to a language. This page hopes to address how to contribute both either or both of those.

## Terminology

We are working towards using standard terminology across the site:

<dl>
  <dt>Structure</dt>
  <dd>
    a broad category of things you can generally do in programming languages. These are like arrays, functions, classes, etc. These are in the drop-down lists on the home page.
  </dd>
  <dt>Concepts</dt>
  <dd>
    these are specific things you can do in a language. This would be like create an array, sort an array, grow/shrink an array, etc. These are in the tables on the Compare or Cheat Sheet pages.
  </dd>
  <dt>Categories</dt>
  <dd>
    These are concepts bundled into smaller groups. For example, on the data types page you would have categories like numerical data types, string and character data types, complex number types, etc.
  </dd>
  <dt>Features</dt>
  <dd>
    Deprecated. It was used interchangeably with structures and concepts.
  </dd>
</dl>

There might be old references, both in code and in documentation, that interchangeably uses "structures" and "concepts". We're working to remove these. If you find one that's wrong, vague, or ambiguous, please let us know. You're welcome to update the [docs on Github](https://github.com/codethesaurus/docs) too!

## Add an Existing Structure Set to a Language

If the language you are looking at is missing a structure to it, you are welcome to go in and add it! The structures are stored in files within the `web/thesauruses/` and then the language directory and major version below that. The structure files are within that directory.

You can open that structure file and add or edit any language features you find that aren't implemented or implemented incorrectly.

The ID names for each of the concepts is consistent across all the languages in order to help match up the concepts with each other. The ID has to stay the same, but the other data doesn't have to (and maybe shouldn't).

If the language doesn't have that structure file yet, you can generate a template either by visiting `https://codethesaur.us/reference/?concept=<your_concept>&lang=<language>%3B<language_major_version>`
and copying it over from there or use `./manage.py generate_templates --language_version=<language_version> <language> <structure>` to generate a file pre filled with the relevant meta info on the top waiting for you to fill the various code segments.

If you have any questions about it, you are welcome to ask through:

Preferred: Reach out on Twitter [@codethesaurus](https://twitter.com/codethesaurus) or add a comment to a [new or existing issue](https://github.com/codethesaurus/codethesaur.us/issues).

You could also email the core team ([coreteam@codethesaur.us](mailto:coreteam@codethesaur.us)).

## Adding New Structures to Code Thesaurus

If a structure (like string manipulation, arrays, functions, etc.) doesn't exist for any language yet, make sure the structure file exists in the `web/thesauruses/_meta` directory first. See the [above section](#add-an-existing-structure-set-to-a-language) on how to copy over a concept if it does.

If it needs to be added, then you will need to follow these steps.

First, open up `web/thesauruses/meta_info.json`. In the second half of the file, there's a group called `structures`. Add your concept to that list. Make sure this concept is written to be inclusive for any language. (For example, things could be called "functions" but in other languages are "methods" or "subroutines" depending on how they work.) Then give the file a name that ends in JSON. You will create this file in the next step.

Within the `web/thesauruses/_meta` directory, create the new file you just named in the `meta_data.json` file. The file will need to have this basic structure:

```
{
  "meta": {
    "structure": "structure_id",
    "structure_name": "Structure Name"
  },
  "categories": {
    "Category Name": {
      "concept_1": "Concept 1 Name",
      "concept_2": "Concept 2 Name",
      ...
      "concept_n": "Concept n Name"
    },
    ...
    "Another Category Name": {
      "concept_m": "Concept m Name",
      ...
      "concept_z": "Concept z Name"
    }
  }
```

Within this file you will need to edit the following items to make the file work:

* Replace `"structure_id"` by the files name without the ".json" file ending.
* Replace `"Structure Name"` with a friendly name for the structure, the same you gave it in `meta_info.json`
* Edit the `"Category Name"`, ... fields to reflect the structure you are adding and add as many categories as you can think of that subdivide the structure you're adding in any hypothetical programming language.
* Within every `"category"` block add as many concepts as you can think of to show examples of how that concept is implemented in any hypothetical programming language.

Don't worry if you can't think about all concepts for all languages because as more languages are added people will add to this file, too.

If you are adding a concept to all of Code Thesaurus, please make a pull request for this _separately_ from a language's implementation of this. This is to make sure the file can be reviewed first before languages try to implement the changes.

## Add on a New Language

If a programming language doesn't exist yet in Code Thesaurus, you are welcome to add it! There are a few steps to this process.

First, you will need to open up `web/thesauruses/meta_info.json`. Within that file, the first section is for languages. Add in your language to that section in alphabetical order. From there, assign it to a directory name in the JSON structure.

Then, add any structures that you feel comfortable to do as described in [Add an Existing Structure Set to a Language](#add-an-existing-structure-set-to-a-language)

For every concept you have to decide:
* Either provide some example code after the `"code"` label which may be an array to provide multiple code snippets.
* Or declare that concept as not implemented using `"not-implemented": true`.

In both cases you can add a `"comment"` to explain particularities about this concept for the language you're describing.

## Contributing Your Changes

First, thank you for offering to help with Code Thesaurus! The maintainers are very appreciative of this work you are doing!

Second, create a pull request (PR) with your changes. Any meta language information should be made in separate PRs from language implementation changes.

Third, make a pull request against Code Thesaurus's main branch. (Your branch can be named whatever you like.)

As you write up your pull request, please be specific about the changes you have made. The provided PR template should help. Make sure the PR has a good title and in the description it talks about the changes that were made and the expected results of the changes. This is to ensure it can be tested properly by the maintainers.

The maintainers will review your PR and probably make constructive suggestions. This is not a reflection on your development skills but rather just to ensure compatibility with other languages or other parts of the system. You may need to make additional changes based on that feedback. But similarly you may also have ideas or your own considerations on how you did things, so you should share those in the PR or in comments too! It's a group effort!

Then finally, the maintainers can merge in your changes. Congrats! You are now a part of Code Thesaurus history!
