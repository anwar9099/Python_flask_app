Flask App 🚀

This Flask app creates a static webpage plus a dynamic route so you can switch between pages in the browser.
The index page returns HTML that links to a second page, and the second page uses a URL parameter (/firstpage/<id>).
It then ecompasses this in a ci/cd pipeline that containerises and updates the images once the code in commited and pipeline job has run.

What’s in the repo?

-Flaskpp.py	the Flask app (homepage + dynamic route)
-Flask_test.py / pytest	makes sure the index route returns HTTP 200 ✅
-Dockerfile	containerises this whole app
-Python-test.yml	CI/CD automation (lint + test + build + push image)
-Run locally 💻
-pip install -r requirements.txt
-python flaskpp.py


open:

http://127.0.0.1:5000/

Test 
pytest

Docker 🐳

build:

-docker build -t flaskapp .


run:

-docker run -p 5000:5000 flaskapp


open:

-http://127.0.0.1:5000/

CI/CD ⚙️

There is a GitHub Actions workflow (.github/workflows/python-test.yml) that:

-Installs deps

-Runs flake8 + pytest

-If everything passes → builds the docker image

-Pushes to docker hub

-So yes — anytime you push changes to main, CI/CD will automatically build a fresh docker image of the updated code.

Requirements 📦
Flask==3.0.0
