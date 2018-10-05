---
layout: default 
title: Project Status
---

# General project status

Jikes RVM lacks support for anything later than Java 1.6 and the project sees little development at the moment.

_Note: The information on this page refers to the status in the code repository and not to the status in the current release._

_Note: If you want to help, please see [How to Help](/HowToHelp/) or inquire via the mailing lists._

## Important project goals

- Add support for the OpenJDK class libraries (a prerequisite for adding support for newer Java versions)
- Improve compliance with JVM spec, particularly with the Java Memory Model

## Additional project goals in no particular order

- Improve Intel 64-bit support (see below for detailed status)
- [Merge relevant changes from MRP](/MergeStatusOfMRPChangesets/)
- Improve and extend test suites
- Improve stability
- Write unit tests for all classes
- Add support for relevant new platforms (ARM?)


# Detailed project status

This section provides more detailed project status information for the components. If you think an important point is missing here, please contact us via the mailing lists.

## Benchmarks

- DaCapo 2006-MR-2 runs on Jikes RVM
- Some benchmarks of DaCapo 9.12 work
- Parts of SPECjvm2008 work (see [RVM-484](http://xtenlang.atlassian.net/browse/RVM-484))

## Community

- Core team consists wholly of volunteers: no paid developers
- Jikes RVM is currently not packaged for any major distribution

## Memory Management

- Generational Immix (the default collector) is stable
- The other collectors are reasonably stable but have some bugs (as shown by the regression tests)
- The MarkCompact collector is currently [too buggy](http://xtenlang.atlassian.net/browse/RVM-1039) to use
- Notable omissions in the collector choices include Baker-style collectors, the Compressor and on-the-fly collectors. **Note: There is an implementation of the [Sapphire](http://xtenlang.atlassian.net/browse/RVM-893) garbage collector for Jikes RVM but as far as we know there's currently nobody working on getting the code into the mainline.**
- MMTk currently doesn't [deal correctly](https://xtenlang.atlassian.net/browse/RVM-816) with page sizes

## OpenJDK
- work happens on the RVM-549-OpenJDK branch
- bootimage builds
- HelloWorld does not run yet

## x64 support

- regression tests on x64 configurations run reasonably well with the notable exception of SPECjbb2005

## Runtime

- The runtime is reasonably modular but it doesn't make very good use of interfaces
- Jikes RVM currently does not follow the JVM specification
- Several features normally found in commercial JVMs are not implemented: strictfp and JVMTI are currently unsupported. There is partial support for JMX with GNU Classpath.

## Adaptive Optimization System

- The AOS provides a good level of control via compiler replay
- The AOS provides clear extension points
- Jikes RVM currently uses only one compilation thread at runtime and the current AOS model does not support multiple compilation threads
- The provided AOS models do not support Feedback-Directed Optimizations

## Compilers

- SSA form is disabled. Scalar SSA form may be fixable; Heap SSA form is considered too broken
- Many optimizations are disabled because they rely on SSA or are considered too buggy
- Some standard optimizations are missing, e.g. Global Array Bound check elimination
- Java Memory Model (JMM) is not correctly implemented
- Bootimage compilation is single-threaded by default because it is too unrealiable with multiple threads

## Infrastructure

- Regression tests are run regulary for ia32, x64 and ppc64 and reports are sent to the regressions mailing list
- Core team members have access to a Jenkins server to view test results in detail
- More regression machines would be useful, in particular PowerPC machines that can be accessed by all team members
- Currently no code review tools in use
- Some unit tests (via JUnit) exist but most classes don't have unit tests
