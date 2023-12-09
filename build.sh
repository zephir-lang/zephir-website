#!/bin/bash

echo "Building Site"
jekyll build

echo "Copying Redirects"
cp _redirects _site/_redirects
