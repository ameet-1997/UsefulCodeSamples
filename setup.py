#!/usr/bin/env python

'''
Directory structure:
.
├── README.md
├── setup.py
└── src
    ├── rule_based_ner
    │   ├── evaluate_rules.py
    │   ├── __init__.py
    │   └── rules.py
    └── rule_based_ner.egg-info
'''

from distutils.core import setup
from setuptools import find_packages

setup(name='rule_based_ner',
      version='0.0.1',
      description='Rule-Based NER for WNUT',
      author='Ameet Deshpande',
      author_email='asd@cs.princeton.edu',
    #   url='https://www.python.org/sigs/distutils-sig/',
      # package_dir={'': '.'},
      package_dir={"": "src"},
      packages=find_packages("src"),
     )

