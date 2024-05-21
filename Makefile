.PHONY: all
all: build-dchpd build-dns

build-dchpd:
	@echo "Building dhcpd docker image (DHCP server)"
	@cd dhcpd; \
	docker build -t dhcpd .

build-dns:
	@echo "Building dns docker image (DNS server)"
	@cd dns; \
	docker build -t dns .
