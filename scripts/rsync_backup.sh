#!/bin/bash

source=/home/partage/02_sources_travail/
dest=/mnt/backupsyno14/backup_sources_travail/actuel
archivesDest=/mnt/backupsyno14/backup_sources_travail/archives/`date +%F`
logfile=/root/logs/backup/`date +%F`.log
rsynclogfile=/root/logs/backup/`date +%F`_rsync_sources_travail.log

date +%F_%H:%M >> $logfile
echo " - Backup $source -- debut" >> $logfile
echo $'\n' >> $logfile

rsync -crv --force --ignore-errors --delete --backup --backup-dir=$archivesDest  $source $dest > $rsynclogfile


date +%F_%H:%M >> $logfile
echo " - Backup $source -- fin" >> $logfile
echo $'\n' >> $logfile