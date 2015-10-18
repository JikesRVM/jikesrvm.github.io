---
layout: default 
title: Source Code Control
---

## Overview

This project uses [Git](http://www.git-scm.com/) to manage its source code. Instructions on Git use can be found at [http://www.git-scm.com/book/en/v2](http://www.git-scm.com/book/en/v2).

## Web Access

The following is a link to the online source repository.

[https://github.com/JikesRVM/JikesRVM.git](https://github.com/JikesRVM/JikesRVM.git)

## Repository access

To obtain a copy of the current git "HEAD", use the "git clone" command

$ git clone [https://github.com/JikesRVM/JikesRVM.git](https://github.com/JikesRVM/JikesRVM.git) jikesrvm

or [fork](https://github.com/JikesRVM/JikesRVM#fork-destination-box) the repository on GitHub.

Committers should clone the repository via SSH, using

$ git clone&nbsp; [git@github.com:JikesRVM/JikesRVM.git](git@github.com:JikesRVM/JikesRVM.git) jikesrvm

## Access through a proxy

TODO this section needs to be rewritten for Git. Please help.

## Write Permission

To commit changes to the repository, execute the following command to commit your changes.

$ git commit -m "A message"

Unlike Subversion, this only creates a local copy of the changes. To push this back to the public repository,

$ git push

which uses your GitHub SSH key for authentication.

### Commit messages

Please write a commit message that describes the purpose of the change. If you are committing code to fix a JIRA issue please include the identifier (i.e. RVM-53) in the commit message. If you are committing code supplied by another individual please indicate the individual.

### Commit content

Please keep commits as focused as possible. Separate out functional and non functional changes into separate commits. (i.e. Code formatting changes should appear in different commits from feature modification commits.)


## Historical repositories ##

The historical Subversion repository can be browsed via the [Sourceforge web fronted](http://sourceforge.net/p/jikesrvm/svn/). Note that the repository has a non-standard structure:

- the code is under rvmroot
- vendor contains code for tuningforkvp
- admin contains scripts that were used in the past
- cattrack contains code for a web application to track test results that Jikes RVM used in the past

The code from the Subversion repository (except for the admin scripts) is mirrored at [GitHub](https://github.com/JikesRVM). Look for the repositories whose name starts with mirror-historical-svn.
