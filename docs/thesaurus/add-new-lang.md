# Adding a New Language

If a programming language doesn't exist yet in Code Thesaurus, you are welcome to add it! There are a few steps to this process.

First, you will need to open up `web/thesauruses/meta_info.json`. Within that file, the first section is for languages. Add in your language to that section in alphabetical order. From there, assign it to a directory name in the JSON structure.

Then, add any structures that you feel comfortable to do as described in [Add an Existing Structure Set to a Language](../thesaurus/add-lang-concept.md).

For every concept you have to decide:
* Either provide some example code after the `"code"` label which may be an array to provide multiple code snippets.
* Or declare that concept as not implemented using `"not-implemented": true`.

In both cases you can add a `"comment"` to explain particularities about this concept for the language you're describing.

