# Database Architecture

The thesaurus data that powers Code Thesaurus is stored in JSON files rather than in a database, so that language data stays easy to read and contribute to (see [Project Architecture](../website/project-architecture.md)). The Django application does, however, use a database to track how the site is used.

The site runs on [Django](https://djangoproject.com) and can use [PostgreSQL](https://www.postgresql.org) as its database (see the [manual install directions](../install/install-ct-manual.md)).

## Database Models

While the thesaurus data is loaded from the JSON files at runtime, the app records site activity through a small number of Django models:

* **`SiteVisit`** - represents a single visit to the site, recording the time of the visit, the URL visited, the visitor's user agent, and the referer.
* **`LookupData`** - represents a language comparison lookup, storing the two languages and their versions along with the structure that was compared. It links back to the `SiteVisit` the lookup happened on.
* **`MissingLookup`** - records when a lookup couldn't be completed because something was missing (such as a language, structure, or concept that doesn't exist yet). It records the type of item that was missing, its value, the language context it happened in, and links back to the `SiteVisit` where it happened. This data feeds into the issues the team files for missing information.

## Future Work

This page is still a work in progress. More detail on migrations, relationships, and how the recorded data is used may be added over time.