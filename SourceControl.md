---
layout: default 
title: Source Code Control
---

## Overview

This project uses [Mercurial](http://mercurial.selenic.com/) to manage its source code. Instructions on Mercurial use can be found at [http://mercurial.selenic.com/guide/](http://mercurial.selenic.com/guide/).

## Web Access

The following is a link to the online source repository.

[http://hg.code.sourceforge.net/p/jikesrvm/code](http://hg.code.sourceforge.net/p/jikesrvm/code)

## Repository access

To obtain a copy of the current mercurial "tip", use the "hg clone" command

$ hg clone&nbsp; [http://hg.code.sourceforge.net/p/jikesrvm/code](http://hg.code.sourceforge.net/p/jikesrvm/code) jikesrvm

Committers should clone the repository via ssh, using

$ hg clone&nbsp; [ssh://USERNAME@hg.code.sf.net/p/jikesrvm/code](ssh://USERNAME@hg.code.sf.net/p/jikesrvm/code) jikesrvm

## Access through a proxy

The Mercurial client can go through a proxy, if you configure it to do so. First, edit your "hgrc" configuration file to indicate which proxy to use. The files location depends on your operating system. On Linux or Unix it is called "~/.hgrc". On Windows it is in "%USERPROFILE%\mercurial.ini". There is a per-repository version called .hg/hgrc at the top level of each repository. Documentation is [here](http://www.selenic.com/mercurial/hgrc.5.html#http-proxy).

There are comments in the file explaining what to do. If you don't have that file, get the latest Mercurial client and run any command; this will cause the configuration directory and template files to be created.

Example : Edit the 'hgrc' file and add something like :

[http\_proxy]  
 host = proxy.example.com:8000

## Write Permission

To commit changes to the repository, execute the following command to commit your changes.

$ hg commit -m "A message"

Unlike subversion, this only creates a local copy of the changes. To push this back to the public repository,

$ hg push

which uses your sourceforge ssh key for authentication.

### Commit messages

Please write a commit message that describes the purpose of the change. If you are committing code to fix a JIRA issue please include the identifier (i.e. RVM-53) in the commit message. If you are committing code supplied by another individual please indicate the individual.

### Commit content

Please keep commits as focused as possible. Separate out functional and non functional changes into separate commits. (i.e. Code formatting changes should appear in different commits from feature modification commits.)

