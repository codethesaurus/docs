# Testing and Validating Updates

There are 5 types of checks that are run for every pull request. You can easily run 4 of these from the project.

If the `python` commands below don't work, try using `python3` instead.

## Run Language File Validators

You can use the command:

```shell
python manage.py validatelanginfofiles
```

to test every language info file for standard issues that usually come up, including making sure field names are 
correct, common typos are correct, and there's not conflicting information.

This will also check if all the files are valid JSON files.

## Run Meta Info File Validator

You can use the command:

```shell
python manage.py validatemetainfofile
```

to test the `meta_info.json` file to make sure any new language or concepts exist within the thesaurus system, and the 
folder structures are correct.

## Run Django Unit Tests

You can use the command:

```shell
python manage.py test
```

to run all unit tests for the project. These should be updated if any Python code for the project is updated.

## Check Docker Build

Running

```shell
docker compose build
```

will attempt to build the Docker container. This should typically pass if no changes have been made to the `Dockerfile` 
file.

Occasionally the `psycopg2-binary` package may fail with a build error. This is usually safe to ignore as it's an issue 
with the package library when they do a new update.

## Validate JSON

The fifth check during pull requests is a GitHub Actions command that checks if all JSON files are valid files. This is 
a separate check that can tell a line/character number for mixed up quotes, curly braces, or other characters. This 
test can't be run directly. Problems usually come up with the other checks anyway.
