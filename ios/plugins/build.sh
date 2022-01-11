#!/bin/bash

set -e

cd AppodealExample

scons arch=arm64 version=3.x
