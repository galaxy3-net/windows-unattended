#!/usr/bin/env bash

mkdir dir1

(cd dir1 ; 7z x ../19041.264.200511-0456.vb_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso)

(cd dir1 ; mkisofs -b boot/etfsboot.com -no-emul-boot -boot-load-seg 1984 -boot-load-size 4 \
                    -iso-level 2 -J -l -D -N -joliet-long -relaxed-filenames -V "WINSP" -o ../winsp.iso .)

genisoimage -b boot/etfsboot.com -no-emul-boot -boot-load-size 8 -iso-level 2 -udf -joliet -D -N -relaxed-filenames \
            -allow-limited-size -o ../winsp.iso .
