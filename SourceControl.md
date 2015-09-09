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


## Historical repositories ##

The historical Subversion repository can be browsed via the [Sourceforge web fronted](http://sourceforge.net/p/jikesrvm/svn/). Note that the repository has a non-standard structure:

- the code is under rvmroot
- vendor contains code for tuningforkvp
- admin contains scripts that were used in the past
- cattrack contains code for a web application to track test results that Jikes RVM used in the past

### Mapping of author names in the Subversion repository to contributors ###

The authors in the historical Subversion repository map to the following name-email combinations:

- (no author) = no_author <no_author@no_author>
- jalapenoadmin = Jalapeno Admin <jalapeno_admin@ANU>
- jalapeno = Jalapeno <jalapeno@ANU> 
- jikesrvmadmin = Jikes RVM Admin <jikesrvmadmin@no_author>
- dgrove-oss = David Grove <groved@us.ibm.com>
- dframpton-oss = Daniel Frampton <Daniel.Frampton@anu.edu.au>
- rgarner = Robin Garner <robin.garner@gmail.com>
- steveb-oss = Steve Blackburn <Steve.Blackburn@anu.edu.au>
- steve-oss = Steve Blackburn <Steve.Blackburn@anu.edu.au>
- captain5050 = Ian Rogers <rogers.email@gmail.com>
- alpern-oss = Bowen Alpern <alpernb@us.ibm.com>
- arvin-oss = Arvin Shepherd <arvin@us.ibm.com>
- augart-oss = Steven Augart <augart@watson.ibm.com>
- saugart = Steven Augart <saugart@yahoo.com>
- bacon-oss = David Bacon <dfb@google.com>
- butrico-oss = Maria Butrico <butrico@us.ibm.com>
- dick-oss = Dick Attanasio <dicka@us.ibm.com>
- dolby-oss = Julian Dolby <dolby@us.ibm.com>
- fqian-oss = Feng Qian <feng.qian@gmail.com>
- igor-oss = Igor Peshansky <igor@watson.ibm.com>
- hauswirt-oss = Matthias Hauswirth <Matthias.Hauswirth@usi.ch>
- hind-oss = Michael Hind <hindm@us.ibm.com>
- hindm = Michael Hind <hindm@us.ibm.com>
- hoffmann-oss = Chris Hoffmann <hoffmann@cs.umass.edu>
- janshep-oss = Janice Shepherd <janshep@us.ibm.com>
- kvenster = Kris Venstermans <kvenster@elis.UGent.be>
- marnold-oss = Matt Arnold <marnold@us.ibm.com>
- perry-oss = Perry Cheng <perryche@us.ibm.com>
- peter_donald = Peter Donald <peter@realityforge.org>
- pfs-oss = Peter Sweeney <pfs@us.ibm.com>
- sjfink-oss = Stephen Fink <sjfink@us.ibm.com>
- trapp = Martin Trapp <martin.trapp@100world.de>
- trapp-oss = Martin Trapp <trapp@watson.ibm.com>
- tango-oss = Ton Ngo <ton@us.ibm.com>
- alexeigor = Alexey Gorodilov <unknown@GSOC-2007>
- gnu_andrew = Andrew John Hughes <gnu_andrew@member.fsf.org>
- emorshdy = Eslam Ahmed Almorshdy <ealmorsh@purdue.edu>
- gousios = Georgios Gousios <gousiosg@gmail.com>
- mikebond = Michael Bond <mikebond@cse.ohio-state.edu>
- pizlo = Filip Pizlo <pizlo@mac.com>
- bclee123 = Byeongcheol Lee <bclee@cs.utexas.edu>
- lhellyer = Laurence Hellyer <laurence@hellyer.me>
- eris2006 = Ashwani Rao <unknown@GSOC-2010>
