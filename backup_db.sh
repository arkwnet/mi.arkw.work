#!/bin/bash
mount /dev/sdb1 /mnt/usb
cd /home/arkw/repos/misskey
docker compose exec db pg_dumpall -U misskey > /tmp/misskey.db
cp /tmp/misskey.db /mnt/usb
umount /mnt/usb
