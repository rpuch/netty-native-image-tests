#!/bin/sh

native-image --no-server --no-fallback -H:ConfigurationFileDirectories=target/config --allow-incomplete-classpath -cp `find target/deps | tr '\n' ':'`target/netty-native-image-tests-1.0-SNAPSHOT.jar Main target/app

