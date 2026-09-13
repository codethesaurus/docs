# Running Documentation Manually

If you'd rather run the documentation site without Docker, you can run it directly with MkDocs.

1. Clone the repository with `git clone https://github.com/codethesaurus/docs.git`
2. Switch into the directory with `cd docs`
3. Set up a virtual environment (recommended):
   - **Windows**: `python -m venv venv`, then activate with `venv\Scripts\activate`
   - **Mac/Linux**: `python3 -m venv venv`, then activate with `source venv/bin/activate`
4. Install the dependencies with `pip install -r requirements.txt`
5. Start the development server with `mkdocs serve`
6. In your browser, visit [http://localhost:8000](http://localhost:8000). As you edit the docs files, the site updates automatically.