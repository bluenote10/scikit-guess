#!/bin/bash

# This is a small script that encapsulates the commands I use for building and
# uploading the distros.

activate skg-py27
python setup.py sdist bdist_wheel
activate skg-py36
make -C doc clean html
python setup.py sdist bdist_wheel

twine upload --repository-url https://test.pypi.org/legacy/ dist/*