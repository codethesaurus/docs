# Code Thesaurus

## Installation

After forking the repository you can run this command to have your own instance of CodeThesaurus

```bash
$ docker-compose up
```
Need more details? Check out the full docs under the "Installing and Running" section.


### Developer's guide
The thesaurus files are the core data elements behind Code Thesaurus. They include all the information that is aggregated together to show the user as they go to compare things.

For instructions on editing your CodeThesaurus instance, refer to the [Thesaurus File](../thesaurus/index.md)


## Code Organization
- web/thesauruses - all the datas of programming language
- web/views - views for rendering web pages
- web/templates - all the template used in the website


## Architecture
There are three main part to our architecture

- Web
- Programming Language Data
- Meta Data

You can check out more details about our architecture here [Project Architecture](../website/project-architecture.md)
