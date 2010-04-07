#!/bin/sh

JHBUILD_RC_FILE=${HOME}/.jhbuildrc-meego
JHBUILD_BIN=$( which jhbuild )

test -f ${JHBUILD_RC_FILE} || {
        echo "Unable to find jhbuildrc file for MeeGo"
        exit 1
}

test ! -z ${JHBUILD_BIN} || {
        echo "Unable to find JHBuild in PATH"
        exit 1
}

${JHBUILD_BIN} -f ${JHBUILD_RC_FILE} "$@"
