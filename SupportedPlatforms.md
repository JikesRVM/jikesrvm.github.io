---
layout: default 
title: Supported Platform
---

# Well-supported platforms

The Jikes RVM version 3.1.2 runs on the following systems:

- IA-32 Linux [®](Trademarks.html)
- PowerPC 32 and 64 AIX [™](Trademarks.html) (big endian only)
- PowerPC 32 and 64 Linux [®](Trademarks.html) (big endian)

Regression tests are regularly run for these platforms.

# Less well-supported platforms

We also support the following operating systems:

- OS X
- Solaris

We rely on the help of the community to provide support for these platforms because we do not have any regression machines for them.

Jikes RVM on Solaris may not work out-of-the-box as it does not seem to get much use.

# Currently unsupported platforms

## Architectures

- x64 is currently not supported. Jikes RVM can be built on x64 using IA-32 and 32-bit addressing (e.g. with the x86\_64-linux configuration). Work on an implementation for x64 has been [started](http://xtenlang.atlassian.net/browse/RVM-977).
- ARM architectures are not supported at all. To our knowledge, there is no publicly available code of a Jikes RVM ARM port. If you are interested in an ARM port, please open an issue in our [bugtracker](http://www.jikesrvm.org/Reporting+Bugs). You can also try to contact&nbsp; [Jeremy Singer](http://www.dcs.gla.ac.uk/~jsinger/), who offered to mentor the GSoC 2012 project for an ARM port.
- There are no plans to support other architectures at this time. If you want to add support for another architecture to the mainline Jikes RVM, we urge you to contact the team via the core mailing list before starting your work.

## Operating Systems

- Windows is currently [not supported](http://xtenlang.atlassian.net/browse/RVM-630). If you are interested in support for Windows, you can take a look at [Metacircular Research Platform](http://mrp.codehaus.org), a fork of the Jikes RVM. It provides support for building on Windows (using the class libraries from the now retired Apache Harmony project).
- Other operating systems are not officially supported.
