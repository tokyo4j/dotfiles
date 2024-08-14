#!/usr/bin/sh
cat > /tmp/update-cmap.c <<EOF
#include <fcntl.h>
#include <linux/kd.h>
#include <sys/ioctl.h>
#include <unistd.h>

char cmap[16][3] = {
    {0x00, 0x00, 0x00}, // black
    {0xaa, 0x00, 0x00}, // dark red
    {0x00, 0xaa, 0x00}, // dark green
    {0xaa, 0x55, 0x00}, // brown
    // {0x00, 0x00, 0xaa}, // dark blue
    {0x55, 0x55, 0xaa}, // dark blue
    {0xaa, 0x00, 0xaa}, // dark purple
    {0x00, 0xaa, 0xaa}, // dark cyan
    {0xaa, 0xaa, 0xaa}, // light grey
    {0x55, 0x55, 0x55}, // dark grey
    {0xff, 0x55, 0x55}, // bright red
    {0x55, 0xff, 0x55}, // bright green
    {0xff, 0xff, 0x55}, // yellow
    // {0x55, 0x55, 0xff}, // bright blue
    {0x99, 0x99, 0xff}, // bright blue
    {0xff, 0x55, 0xff}, // bright purple
    {0x55, 0xff, 0xff}, // bright cyan
    {0xff, 0xff, 0xff}, // white
};

int main() {
    int fd;
    if ((fd = open("/dev/console", O_RDWR | O_NOCTTY)) < 0)
        return 1;
    if (ioctl(fd, PIO_CMAP, cmap) < 0)
        return 1;
    return 0;
}
EOF

gcc /tmp/update-cmap.c -o /tmp/update-cmap
/tmp/update-cmap
exitcode=$?
rm -f /tmp/update-cmap.c /tmp/update-cmap
exit $exitcode
