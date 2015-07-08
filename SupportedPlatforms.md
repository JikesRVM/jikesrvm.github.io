---
layout: default 
title: Supported Platforms
---

# Well-supported platforms

The Jikes RVM version 3.1.3 runs on the following systems:

- IA-32 Linux [®](/Trademarks/)
- PowerPC 64 Linux [®](/Trademarks/) (big endian)

Regression tests are regularly run for these platforms.

# Less well-supported platforms

We also support the following platforms:

- OS X
- Solaris
- PowerPC 32

We rely on the help of the community to provide support for these platforms. We do not have any regression machines for them so the current development version (or release) may be broken at any given time on these platforms. If you notice a problem on these platforms, please consider providing a patch to correct the problem.

# Currently unsupported platforms

We are happy to take patches to support more platforms. However, we can't guarantee proper maintenance without suitable regression machines.

## Architectures

- x64 is currently not supported. Jikes RVM can be built on x64 using IA-32 and 32-bit addressing (e.g. with the x86\_64-linux configuration). Work on an implementation for x64 has been [started](http://xtenlang.atlassian.net/browse/RVM-977).
- PPC little endian is currently not supported. We have access to a POWER8 machine via the GCC compile farm so we can test and review patches. However, we don't have the resources to start a port ourselves right now.
- ARM architectures are not supported at all but we would really like to have support for them. To our knowledge, there is no publicly available code of a Jikes RVM ARM port. If you want to start an ARM port, please contact us on the core mailing list. If you just need a JVM for research on ARM and are not set on Jikes RVM, you might be interested in the [Maxine ARMv7 port](https://kenai.com/projects/maxine/lists/users/archive/2015-07/message/1) that's currently in development.
- There are no plans to support other architectures at this time. If you want to have support for another architecture in the mainline Jikes RVM so that it ends up in an official release, we urge you to contact the team via the core mailing list before starting your work. This will make integration of the port much easier. If you have questions about private ports (i.e. ports that you cannot or do not want to contribute to the mainline), please use the researchers list instead of the core list.

## Operating Systems

- Windows is [not supported](http://xtenlang.atlassian.net/browse/RVM-630). If you are interested in support for Windows, you can take a look at [Metacircular Research Platform](https://github.com/codehaus/mrp), a fork of the Jikes RVM. It provides support for building on Windows (using the class libraries from the now retired Apache Harmony project). If you want to add Windows support to Jikes RVM, the easiest way to proceed is probably roughly as follows:
1. Add [OpenJDK support to Jikes RVM](https://xtenlang.atlassian.net/browse/RVM-549) (which is a lot of work).
2. Merge relevant changes for Windows support from the Metacircular Research Platform to Jikes RVM. Your best bet is to search the [MRP status page](/MergeStatusOfMRPChangesets/) for relevant changesets first. That should get you most of the changes. The rest can likely be found by searching MRP's history (i.e. files and commit messages) for Windows or Win or something similar.
3. Finish the port to Windows.
