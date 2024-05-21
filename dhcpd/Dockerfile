FROM alpine:latest

RUN apk update && apk add --no-cache dhcp

COPY dhcpd.conf /etc/dhcp/dhcpd.conf

# TODO: this could be a volume
RUN touch /var/lib/dhcp/dhcpd.leases

# -f: foreground
# -d: debug
# --no-pid: do not write a pid file
# -4: IPv4 only
# interface has to be passed as an argument
CMD ["/usr/sbin/dhcpd", "-f", "-d", "--no-pid", "-4"]
