# Configure pppd in Linux for AT&T wireless via usb

AT&T's suggestion for using pppd to connect to their wireless network.

http://www.att.com/esupport/article.jsp?sid=36059&cv=820#fbid=Ph3zROJiN9D

## Using

    /usr/sbin/pppd call gprs

Note: This tells the PPPD dialer to call the `gprs` script, which in turn calls `gprs-connect-chat` and `gprs-disconnect-chat` as necessary.
Attempt to browse.
If unable to resolve url's it's likely due to PPPD not updating `/etc/resolv.conf` with the correct DNS servers.
To fix this, back up `/etc/resolv.conf` and issue the following command:

    echo - e "nameserver 10.250.1.10\nnameserver 10.250.1.11: > /etc/resolv.conf

To disconnect, press "Control-C" in the terminal window.

## Notes
Note: Root access is required to create connection scripts and run the PPPD dialer. 
Note: Ensure that when copying and pasting information from the above scripts the formatting matches exactly what is shown.  Linux uses a different method for carriage returns between lines in text documents, and if the information is entered inappropriately errors are likely to occur.
Note: Most desktop environments, such as KDE and GNOME, include a utility for creating PPPD scripts, however these vary depending on the Linux distribution and version of desktop environment in use. 
Note: Some Linux distributions store commands in a different location, so these scripts may need to be modified depending on the distro in use.
This configuration has been confirmed to work with the following:

IOGear GBU211 USB Bluetooth Adapter (uses Broadcom chipset) although any hardware supported by BlueZ should work.
Kernels tested: 2.4.20 and 2.6.9-1-667
Distributions tested: Debian, Fedora Core, Slackware, Gentoo, and Mandrake
Devices tested:
Nokia 3620/3650/6651/6820
Novatel G100/U520
Sierra Wireless AirCard 710/750/775
Sony Ericsson GC82/GC83
Sony Ericsson T68/T68i/T610/T616
Motorola A845/V600



Note: Root access is required to create connection scripts and run the PPPD dialer. 
Note: Ensure that when copying and pasting information from the above scripts the formatting matches exactly what is shown.  Linux uses a different method for carriage returns between lines in text documents, and if the information is entered inappropriately errors are likely to occur.
Note: Most desktop environments, such as KDE and GNOME, include a utility for creating PPPD scripts, however these vary depending on the Linux distribution and version of desktop environment in use. 
Note: Some Linux distributions store commands in a different location, so these scripts may need to be modified depending on the distro in use.
This configuration has been confirmed to work with the following:

IOGear GBU211 USB Bluetooth Adapter (uses Broadcom chipset) although any hardware supported by BlueZ should work.
Kernels tested: 2.4.20 and 2.6.9-1-667
Distributions tested: Debian, Fedora Core, Slackware, Gentoo, and Mandrake
Devices tested:
Nokia 3620/3650/6651/6820
Novatel G100/U520
Sierra Wireless AirCard 710/750/775
Sony Ericsson GC82/GC83
Sony Ericsson T68/T68i/T610/T616
Motorola A845/V600
