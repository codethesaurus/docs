# Adding New Structures to Code Thesaurus

If a structure (like string manipulation, arrays, functions, etc.) doesn't exist for any language yet, make sure the structure file exists in the `web/thesauruses/_meta` directory first. See the [Add a Existing Structure](../thesaurus/add-lang-concept.md) on how to copy over a concept if it does.

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
