# Adding a New Language

If a programming language doesn't exist yet in Code Thesaurus, you are welcome to add it! There are a few steps to this process.

First, you will need to open up `web/thesauruses/meta_info.json`. Within that file, the first section is for languages. Add in your language to that section in alphabetical order. The first part (the key) is the folder it will be located in. The second part (the value) is the common name of the language. For example, for the Objective C language, you might add `"objective_c": "Objective C"` 

Next, create the directory you just mentioned in the `web/thesauruses/` directory. So you'd add `objective_c` within this directory.

Then, add any structures that you feel comfortable to do as described in [Add an Existing Structure Set to a Language](../thesaurus/add-lang-concept.md).

Once you have added the new language to `meta_info.json` and added at least one structure, you can make a pull request to add it to Code Thesaurus!