## Add a New Language Version

Adding a new version of an existing programming language is rather simple. There are a few steps involved.

First, it's helpful to understand [how to add a new language](../thesaurus/add-new-lang.md) since the process is very connected to that.

To add a new version:

* Add a subdirectory off of the language directory. Name that the version of the language. Don't include "version" or "v" in it, but if there is text in the official version, include that. (Examples include "C++17" and "ECMAScript 2020".)
* You can copy the structure files from another version of the same language into this new directory. Only copy over the ones you intend to modify to start.
* In each structure file, update `"language_version"` to be the same as the folder name
* The system should then pick up the new version from there and add it into the dropdown lists on the home page.

