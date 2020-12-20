#! /bin/bash

data=`date +%Y%m%d%H%M%S`
cd '/home/bm/Documents/base'
from='base'
toNewFile='/home/bm/Documents/Backups/backupObsidian/'$data'.tar'

#archive
echo "archive from: \"$PWD$from\" to: \"$toNewFile\""
tar -czf $toNewFile $from

echo "gpg file: $toNewFile"
gpg -c $toNewFile

echo "remove file: $toNewFile"
rm -rf $toNewFile
