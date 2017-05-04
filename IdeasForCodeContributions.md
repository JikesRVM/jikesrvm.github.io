---
layout: default 
title: Ideas for code contributions
---

This page highlights some ideas for code contributions. Some of these selections also appear in our [issue tracker](Issue-Tracker.html). Please volunteer to pluck these fruit, or suggest high-priority, but low-effort tasks by creating new tracker entries. If you want to help out and don't know what to do, ask us on the [mailing lists](Mailing-Lists.html) and mention what kind of tasks you're interested in.

# Low-hanging fruit (high priority, low-effort)

- **Write tests**: The test coverage is abysmal. We need all kinds of tests. Infrastructure for unit tests, Jasmin-based tests and benchmarks is already in place and could possibly be re-used.
- **Complete missing pieces of library interface** : There are a handful of methods in Jikes RVM's implementation of a few core library classes ( [java.lang.Class](http://www.sourceforge.net/support/tracker.php?aid=1147437), [java.lang.Runtime](http://sourceforge.net/tracker/index.php?func=detail&aid=1147439&group_id=128805&atid=712768), [java.lang.Throwable](http://www.sourceforge.net/support/tracker.php?aid=1147440)) that throw UnimplementedError. Provide an implementation for one of these methods.
- **Improve efficiency of some optimizing compiler phase** : Many of the optimizing compiler passes use sub-optimal data structures, and compile-time could easily be improved. Some simple phases to start with include the local optimizations and flow-insensitive optimizations.
- **Implement missing JNI functionality** : See tracker items: [CreateJavaVM](http://xtenlang.atlassian.net/browse/RVM-565), [Attach/DetachCurrentThread](http://xtenlang.atlassian.net/browse/RVM-566). [OnUnload](http://xtenlang.atlassian.net/browse/RVM-119) is also missing but not a high priority because the Jikes RVM currently does [not implement class unloading](http://xtenlang.atlassian.net/browse/RVM-324).
- **[Strip mining](http://xtenlang.atlassian.net/browse/RVM-567)** : This optimization would be profitable, by reducing the overhead of yield point checks in tight loops.
- **[Global Array Bounds Check Elimination](https://xtenlang.atlassian.net/browse/RVM-564)** : While the literature presents several algorithms for array bounds check elimination, the optimizing compiler does not have a complete implementation. Note that there are some non-trivial technical difficulties with [ABCD](http://dl.acm.org/citation.cfm?id=358438.349342), regarding integer overflow. A simple range propagation dataflow solver would be an improvement over what the system has now (namely nothing).
- **Escape Analysis**: the escape analysis that is currently implemented is tailored to a few internal optimization passes and not suitable for re-use by other optimization passes. A more general and more powerful escape analysis pass would be useful.

# High priority, large effort

- **[Support for OpenJDK as a class library](https://xtenlang.atlassian.net/browse/RVM-549):** We have received community contributions for OpenJDK support. However, the patch set is large and not split into commits. Some parts of the patch set probably need to be changed or rewritten. You can help by grouping changes into commits and testing those. Reviews would also be helpful. There is also another approach to porting OpenJDK. That approach uses a container on a non-OpenJDK Jikes RVM to port incrementally. You can find the code at GitHub ([#1](https://github.com/tsujamin/JikesRVM) & [#2](https://github.com/tsujamin/JikesOpenJDK6)).
- **[Support for x64](https://xtenlang.atlassian.net/browse/RVM-977)** :** The x64 port is basically working but it needs more testing and bug fixes for less frequently occurring bugs.
- **Improve situation for the optimizing compiler so that we can enable [previously disabled optimizations](https://xtenlang.atlassian.net/browse/RVM-656)** : There are a number of optimizations in the opt compiler that are currently disabled by default because they are considered too buggy. We currently don't have proper tests for the optimizing compilers so we need to write a lot of tests to ensure that the compiler works correctly. The compiler-internal IR verification (and its paranoid variant) could also be improved. There are also opportunities in the refactoring of the [phase organisation](http://xtenlang.atlassian.net/browse/RVM-239).
- **[SSA](https://xtenlang.atlassian.net/browse/RVM-657)**: SSA form is currently disabled because of bugs. We should re-enable it.
