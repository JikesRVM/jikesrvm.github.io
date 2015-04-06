---
layout: default 
title: Reporting Bugs
---

Thank you for coming to this page. We are sorry if you are experiencing difficulties with the Jikes RVM. While we do our best to test and debug Jikes RVM, with so much variety of hardware and configurations it may be that we've missed something. This is where you can make a contribution to Jikes RVM by just telling us what isn't working.

**Reporting bugs is important to us!** When we know something isn't working we can look into fixing it and schedule the fix in our release road map. This is also true if you are experiencing problems with a Jikes RVM that you have modified for your own development; knowing how people modify Jikes RVM will help us to make it more flexible and robust in the future.

## How to report bugs

The Jikes RVM Bug Tracker is managed using a system called [JIRA](https://xtenlang.atlassian.net/browse/RVM), which is really friendly to use. To avoid spam, JIRA does require a user account when reporting or commenting on issues.

You can also report your bug on the researchers [mailing list](/MailingLists/). Do not report bugs on the core mailing list unless you are willing to work on a solution.

If you need a way to report a bug that contains confidential information, contact the Jikes RVM team via the core mailing list for instructions.

### Check that your issue has not been reported yet

First, please take some time to search or browse the list of issues to see if your problem has been reported before. If it has, you can let us know that this issue is important to you by voting to have it fixed. Moreover, you can also select to watch the issue; this way, JIRA will notify you of any updates to it.

Even if your issue has been reported yet, you may be able to provide us with some further information about the circumstances causing the problem. If this is the case, please comment on the existing issue.

### Create a bug report

Once you have checked that your issue has not been reported before, create a new issue by following the instructions in JIRA and completing the following checklist:

1. Give a clear but succinct summary, as this is the title JIRA will assign to your issue.
2. If possible, state which components of Jikes RVM exhibit the problem, e.g., if you problem is specific to one particular garbage collector or compiler.
3. Clearly identify the environment the problem occurs in:  
  * The version of Jikes RVM which exhibits the problem (If you select the _hg tip_ as a version, please also copy & paste the output of `hg identify` into the Environment field.)
  * The build/target host (`ia32-linux`, `x86_64-osx`, etc.) and configuration (`production`, `prototype-opt`, etc.) you have used when [building the RVM](/UserGuide/Building-the-RVM_71513.html)
  * The operating system/distribution and kernel version (Copy & paste the output of `uname -a` into the Environment field.)
4. Describe both the problem and the circumstances under which the problem occurs.

Please provide enough information that we can reproduce the error. At the very least, give the exact command line used to run the RVM. If you are running a workload which does not stem from a well-known benchmarks suite (the DaCapo benchmarks, SPECjvm, etc.), please provide us with a download URI for your workload, so that we can run it ourselves.

Also, please note that the code of Jikes RVM uses assertions extensively. If your problem shows up in one of the production configurations, for testing purposes [configure the RVM](/UserGuide/Configuring-the-RVM_73261.html) such that assertions are enabled (`development` rather than `production`). Often, a failed assertion provides a good indication of what went wrong, so please include the stack trace from the failed assertion in your bug report.

_NB. This page is the landing pad for when an abnormal condition has terminated Jikes RVM._

