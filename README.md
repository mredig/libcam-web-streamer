# stream libcamera in docker

To use:
1. mount a ramdisk on your host:
	* `mkdir /mnt/ramdisk`
	* `mount -t tmpfs -o size=128M tmpfs /mnt/ramdisk/`
	* or do something in `/etc/fstab` (especially if you want to your host to be able to reboot your instances back up after the host reboots)
1. `docker compose up -d`
1. ???
1. profit?
