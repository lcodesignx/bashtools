#!/bin/bash
#
#: Title        : luser-randompass
#: Date         : 2020-08-12
#: Author       : "Alvaro Lupercio" <lupera1@jhuapl.edu>
#: Version      : 1.0
#: Description  : Fix rpmdb: Thread died in Berkeley DB library

# ensure script is being executed with superuser privileges.
if [[ "${UID}" -ne 0 ]]
then
    printf "Script has to be run with sudo privileges or as root.\n"
    exit 1
fi

# copy existing __db files to backup directory and removed them
function dbrebuild {
    cp -a /var/lib/rpm/__db* $BACKUPDIR_PATH
    rm -f '/var/lib/rpm/__db.[0-9][0-9]*'
    printf "rebuilding rpm database ... \n"
    rpm --quiet -qa
    rpm --rebuilddb
    yum clean all
}

# check if backup directory exists, if it does not create it.
BACKUPDIR_PATH='/var/lib/rpm/backup'
if [[ -d $BACKUPDIR_PATH ]]
then
    printf "Backup directory already exists.\n"
    dbrebuild
else
    printf "creating backup dir ... "
    mkdir -p $BACKUPDIR_PATH
    dbrebuild
fi

