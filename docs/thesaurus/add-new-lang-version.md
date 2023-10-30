# Add a New Language Version

Adding a new version of an existing programming language is rather simple. There are a few steps involved.

First, it's helpful to understand [how to add a new language](../thesaurus/add-new-lang.md) since the process is very connected to that.

To add a new version:

* Add a subdirectory off of the language directory for the version number. For example, off of the `web/thesauruses/python` directory, add a `3` directory. Don't include "version" or "v" in it, but if there is text in the official version, include that. (Examples include "C++17" and "ECMAScript 2020".)
* You can then add your first structure file.
    * You can run the command `python manage.py generate_template` to add the new concept file in the new version. 
    * If the language hasn't changed much, it might be easier to just copy a structure file from a previous version of the same language and just change what's new.
* In each structure file, update `"language_version"` to be the same as the folder name
* The system should then pick up the new version from there and add it into the dropdown lists on the home page.

At this point, the website should pick up the new language version in the dropdown lists on the home page. 