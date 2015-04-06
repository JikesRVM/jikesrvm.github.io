---
layout: default 
title: How to Help
---

The Jikes RVM project aims to provide a high-quality state-of-the-art open-source infrastructure for programming language research. Of course, this requires a significant investment in system maintenance and enhancement, to keep the system running on new environments and to keep up with the latest innovations in language design and implementation practice.

Feedback and contributions from the research community are the indispensable, invaluable resource that will ensure the project's continued success. Please help to improve some aspect of the system; no improvement is too small or too simple! The more volunteers can contribute, the better the system will serve the research community, resulting in faster and more solid research results. It is also a great help to the community if you contribute your code to the [research archive](/Resources/ResearchArchive).

## How can you help Jikes RVM?

Jikes RVM is a fairly large, complex, and perhaps intimidating system. However, there are many to-do items which don't require extensive Jikes RVM expertise.

This page highlights a selection of low-hanging fruit for potential contributions. This list is of course nowhere near comprehensive, but exists just as a sampling of potential activities.

Note that most of the tasks on this page are related to code in some way or another: we currently do not have any tasks for people interested in marketing, translations or graphic design. If you think that the project would benefit from a contribution in this area (or any other area that is not named here), do not hesitate to contact us on the [mailing lists](/MailingLists/).

Additional ideas that require code contributions are listed on a [separate page](/IdeasForCodeContributions/).

All contributions to Jikes RVM are managed in our JIRA-based [issue tracker](/IssueTracker/).

Please let us know if the list below is out-of-date by entering a bug against the website.

## Some low-hanging fruit in no particular order

- **Contribute sanity and performance tests** : The system's [test infrastructure](/UserGuide/Testing-the-RVM_72032.html) is set up to test and run standard benchmarks and sanity tests in a uniform framework. This functionality helps foster reproducible performance results, and exercises the system nightly to shake out bugs. If you're adding new code to the system, please consider contributing tests for it.
- **Contribute unit tests** : Support for [unit tests](/UserGuide/Testing-the-RVM_72032.html) was recently added to the Jikes RVM by João Reys Santos for Google Summer of Code 2012. There is an initial set of tests but it is not very extensive. In the long term, we should have a unit test for almost every class.
- **Contribute missing sections or clarifications to the**  **[User Guide](/UserGuide/)** : If you run across some problem or area that is not well-documented in the [User Guide](/UserGuide/)), please write a short section for inclusion. Also, please help us improve the installation section to cover any installation problems you run into that are not documented. If you are interested in contributing to the User Guide, or to other pieces of online documentation maintained in our wiki, we're quite willing to give you write access to the wiki pages. Please contact a Steering Committee member.
- **Update the [Publications](/Resources/Publications) and [Dissertations](/Resources/Dissertations)**** pages**: The lists of publications and dissertations are incomplete. You can inform members of the core team about missing publications or contact a Steering Committee member to request wiki access so that you can edit the pages yourself.
- **Improve Javadoc comments in system code** : We realize that the quality of Javadoc ™ comments is haphazard; please help us improve it.
- **Confirm, triage or fix bugs** : The issue tracker contains a lot of open bugs. If a bug interests you, try to reproduce and fix it. If you can't fix the bug but can provide a test case that reliably reproduces the bug, that is also very helpful. If you provide a fix, please consider providing test cases for the bug. Patches with test cases require less effort from the commiters and will reach the mainline sooner.
- **Review commits and patches** : You can review commits (subscribe to the commit [mailing list](/MailingLists/) to receive commit notifications) and patches on the issue tracker to improve code quality and catch bugs.  
  
  

