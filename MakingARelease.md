---
layout: default 
title: Making a release
---

The following are the steps required to make a release of the Jikes RVM.

Leading up to a release, here are the steps to take. Commits are to the master branch.

1. Generate javadoc (apidoc target). If needed, fix errors and commit changes.
2. Take the generated javadoc and commit it to JavaDoc directory of jikesrvm.github.io
3. Update the release number in build.xml (will continue to have +git suffix) and commit change
4. Generate html and pdf versions of the userguide.  The sources are in jikesrvm.github.io
   _userguide-sources.  Use pdflatex to make the pdf version; use buildHTMLUserguideForLocalDebugging.sh
   to generate the html.  Copy these into the userguide directory of the main git repo and commit/push.
5. Update JIRA version management to indicate that version has been released.
6. Generate text release notes from JIRA and put them in NEWS.txt. Commit.

Next, actually do the git operations to update the release branch.

1. Switch to the release branch (git checkout release)
2. Merge master to the release branch (git merge master; git commit/push).
   It is very likely you will need to resolve a conflict in build.xml around the release
   number and git.version as part of doing this merge. There should not be other conflicts.
3. Edit build.xml to remove the +git from the release number and set the git.version field. git commit/push.
4. Tag the release (git tag -a 3.1.4 -m "JikesRVM 3.1.4 release"; git push --tags)

Finally, publish and announce the release.

GitHub will have automatically made a release based on the tag you created above.
We will also mirror that release tar ball into sourceforge so that people can
get it from either place.

1. Download JikesRVM-version.tar.gz from the GitHub release.
2. Extract the portion of NEWS.txt relevant to this release into a README.md file
   and convert formatting to markdown.  Edit the GitHub release to add this as ReleaseNotes.
3. Upload the release tar ball and README.md to sourceforge; set it as default download using Files GUI.
4. In jikesrvm.github.io, update Releases.md to refer to the new download version; commit.
5. Post announcement in SF news and on the website (create a new post in the _posts directory).
6. Send out mail announcements to jikesrvm-announce and jikesrvm-researchers
