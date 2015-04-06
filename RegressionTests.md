---
layout: default 
title: Regression Tests
---

Regression tests are run every day with Jenkins for IA32 and reports are sent out to the regression [mailing list](Mailing-Lists.html). Both Jenkins and the machines are currently only accessible by the core development team. Jenkins tests on PPC will be added at a later date.

[Look here](http://docs.codehaus.org/display/RVM/Testing+the+RVM) if you are looking for how to run our automated tests on your machines.

# PowerPC machines for development

If you need access to a PowerPC machine for development (as opposed to regular regression testing), consider contacting the [GCC Compile Farm](http://gcc.gnu.org/wiki/CompileFarm). The GCC compile farm is an independent project that provides access to shared hardware for free software developers.

All PPC machines that are available at the moment are 64-bit:

| Machine | OS | Notes |
| --- | --- | --- |
| gcc110 | Fedora 18 | IcedTea 7 with PPC64 JIT available in /opt/cfarm/ |
| gcc111 | AIX 7.1 | IBM Java 6 JDK and IBM Java 7 JRE available |
| gcc112 | Fedora 21 | PPC64 little endian (which we don't support right now), IcedTea 8 with PPC64 JIT preinstalled as standard JDK  |

Depending on the machine you want to use, you may have to reconfigure the JDK that Ant uses. This can be done by creating an .antrc file (e.g. in your home directory).

**Example .antrc for gcc110**

JAVACMD=/opt/cfarm/icedtea-2.5.3-java7-ppc64-jit/bin/java

A JAVACMD entry changes the JDK that is used to run Ant. (Note: this cannot be a JRE as Ant needs a JDK.)

You can use an ANT\_OPTS entry to pass additional arguments to the started VM if necessary.

