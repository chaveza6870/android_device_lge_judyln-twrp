#!/sbin/sh

relink()
{
	/sbin/cp $1 ${1}_old
	sed 's|/sbin/linker64      |///////sbin/linker64|' "${1}_old" > "$1"
	chmod 755 $1
}

relink /sbin/qseecomd
relink /sbin/android.hardware.gatekeeper@1.0-service-qti
relink /sbin/android.hardware.keymaster@3.0-service-qti
relink /sbin/vendor.lge.hardware.lgkm@1.0-service
relink /sbin/strace
relink /sbin/keystore

/sbin/setprop crypto.ready 1
