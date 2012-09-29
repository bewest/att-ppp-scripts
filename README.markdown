# Configure pppd in Linux for Ting/AT&T wireless via usb

Modify AT&T's suggestion for using pppd to connect to their wireless
network.

http://www.att.com/esupport/article.jsp?sid=36059&cv=820#fbid=Ph3zROJiN9D

Tested on beaglebone with sierra 250 from Ting.  Basically, one just
dials `ATD*99***1#` and everything works.  On older networks, use the
777 number instead.

I didn't know exactly what chat did or how it was used until this
project, which is well after I wrote
[unapy](https://github.com/bewest/unapy).  `chat` seems to be an
elegant solution, but it makes conditional auditing and reporting
somewhat painful if you don't love shell scripts.  unapy or a similar
framework in ruby or coffeescript (for node) might be handy in the
future?  There is some value in being able to audit and monitor the
modem itself.

Symlinking `/etc/ppp/peers/provider` -> `/etc/ppp/peers/gprs` will
enable starting properly such that `pon` and `poff` work. (No joke.)

## Using

    $ pppd call gprs

Note: This tells the PPPD dialer to call the `gprs` script, which in turn calls `gprs-connect-chat` and `gprs-disconnect-chat` as necessary.
Attempt to browse.
If unable to resolve url's it's likely due to PPPD not updating `/etc/resolv.conf` with the correct DNS servers.
To fix this, back up `/etc/resolv.conf` and issue the following command:

    echo - e "nameserver 10.250.1.10\nnameserver 10.250.1.11: > /etc/resolv.conf

To disconnect, press "Control-C" in the terminal window.

## Notes

    
