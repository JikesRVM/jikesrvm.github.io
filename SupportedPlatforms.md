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

- Work on x64 support has been [started](http://xtenlang.atlassian.net/browse/RVM-977). The x64 baseline compiler generally works. However, there are still (intermittent) failures so it is likely not reliable enough for research. The x64 opt compiler port is not usable yet.
- ARM architectures are not supported at all but we would really like to have support for them. There's code for a work-in-progress ARM port at [GitHub](https://github.com/dmitry-brizhinev/JikesRVM).
- PPC little endian is currently not supported. We have access to a POWER8 machine via the GCC compile farm so we can test and review patches. However, we don't have the resources to start a port ourselves right now.
- There are no plans to support other architectures at this time. If you want to have support for another architecture in the mainline Jikes RVM so that it ends up in an official release, we urge you to contact the team via the core mailing list before starting your work. This will make integration of the port much easier. If you have questions about private ports (i.e. ports that you cannot or do not want to contribute to the mainline), please use the researchers list instead of the core list.

## Operating Systems

- Windows is [not supported](http://xtenlang.atlassian.net/browse/RVM-630). If you are interested in support for Windows, you can take a look at [Metacircular Research Platform](https://github.com/codehaus/mrp), a fork of the Jikes RVM. It provides support for building on Windows (using the class libraries from the now retired Apache Harmony project). If you want to add Windows support to Jikes RVM, the easiest way to proceed is probably roughly as follows:
1. Add [OpenJDK support to Jikes RVM](https://xtenlang.atlassian.net/browse/RVM-549) (which is a lot of work).
2. Merge relevant changes for Windows support from the Metacircular Research Platform to Jikes RVM. Your best bet is to search the [MRP status page](/MergeStatusOfMRPChangesets/) for relevant changesets first. That should get you most of the changes. The rest can likely be found by searching MRP's history (i.e. files and commit messages) for Windows or Win or something similar.
3. Finish the port to Windows.
- BSD and any operating systems not mentioned above are untested.
