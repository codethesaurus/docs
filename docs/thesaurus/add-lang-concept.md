# Add an Existing Structure Set to a Language

If the language you are looking at is missing a structure to it, you are welcome to go in and add it! The structures are stored in files within the `web/thesauruses/` and then the language directory and major version below that. The structure files are within that directory.

You can open that structure file and add or edit any language features you find that aren't implemented or implemented incorrectly.

The ID names for each of the concepts is consistent across all the languages in order to help match up the concepts with each other. The ID has to stay the same, but the other data doesn't have to (and maybe shouldn't).

If the language doesn't have that structure file yet, you can generate a template either by visiting `https://codethesaur.us/reference/?concept=<your_concept>&lang=<language>%3B<language_major_version>`
and copying it over from there or use `./manage.py generate_templates --language_version=<language_version> <language> <structure>` to generate a file pre-filled with the relevant meta info on the top waiting for you to fill the various code segments.

If you have any questions about it, you are welcome to ask through:

Preferred: Reach out on Twitter [@codethesaurus](https://twitter.com/codethesaurus) or add a comment to a [new or existing issue](https://github.com/codethesaurus/codethesaur.us/issues).

You could also email the core team ([coreteam@codethesaur.us](mailto:coreteam@codethesaur.us)).
