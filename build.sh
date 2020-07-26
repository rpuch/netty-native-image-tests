#!/bin/sh

mvn clean package && ./collect.sh && ./build-native.sh
