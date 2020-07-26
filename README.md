# Netty native image problem demo

This demonstrates a problem that occurs when using Netty in a native image under Java 11.

## Prerequisites

GraalVM's (https://github.com/graalvm/graalvm-ce-builds/releases/tag/vm-20.1.0) bin directory should be on $PATH.

## Build and run

1. Execute ./build.sh
2. Execute app/target

The result is an exception:

Exception in thread "main" com.oracle.svm.core.jdk.UnsupportedFeatureError: Unsupported method of Unsafe
	at com.oracle.svm.core.util.VMError.unsupportedFeature(VMError.java:86)
	at jdk.internal.misc.Unsafe.staticFieldOffset(Unsafe.java:230)
	at sun.misc.Unsafe.staticFieldOffset(Unsafe.java:662)
	at io.netty.util.internal.PlatformDependent0$5.run(PlatformDependent0.java:294)
	at java.security.AccessController.doPrivileged(AccessController.java:83)
	at io.netty.util.internal.PlatformDependent0.<clinit>(PlatformDependent0.java:279)
