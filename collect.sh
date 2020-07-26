#!/bin/sh

java -agentlib:native-image-agent=config-output-dir=target/config -cp `find target/deps | tr '\n' ':'`target/netty-native-image-tests-1.0-SNAPSHOT.jar Main
