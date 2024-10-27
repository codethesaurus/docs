# Quick Start Guide

After forking the repository you can run this command to have your own instance of CodeThesaurus

```bash
$ docker-compose up
```
Need more details? Check out the full docs under the "Installing and Running" section.

## Developer's guide
The thesaurus files are the core data elements behind Code Thesaurus. They include all the information that is aggregated together to show the user as they go to compare things.

For instructions on editing your CodeThesaurus instance, refer to the [Thesaurus File](../thesaurus/index.md)

## Testing and Validating

Head to the [Testing and Validating](../thesaurus/testing.md) page to see the ways to run unit tests and language file validators.

## Code Organization
- web/thesauruses - all the programming language data files
- web/views - views for rendering web pages
- web/templates - all the templates used on the website

## Architecture
There are three main part to our architecture

- Web
- Programming Language Data
- Meta Data

You can check out more details about our architecture here [Project Architecture](../website/project-architecture.md)
