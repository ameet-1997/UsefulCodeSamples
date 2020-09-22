#!/usr/bin/env python

'''
Look at directory: /n/fs/nlp-asd/asd/asd/Projects/LGML/lgml/ner/rule_based_ner
to see how packages should be structures
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

