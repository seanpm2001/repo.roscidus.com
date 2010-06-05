#!/bin/sh
args="-rlvt --chmod=ugo=rwX --itemize-changes --omit-dir-times --progress --exclude debs --exclude *.sw* --exclude build index.html style.css git e devel java keys lib interface.xsl shell.sugarlabs.org:/srv/www-roscidus/repo/"

rsync --dry-run $args

echo Press Return to upload...
read foo
rsync $args
