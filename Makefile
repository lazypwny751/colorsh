define install
	mkdir -p /usr/local/lib/themis /usr/share/doc/themis/colorsh /usr/share/licenses/themis/colorsh
	install -m 755 colorsh.sh /usr/local/lib/themis
	cp README.md /usr/share/doc/themis/colorsh
	cp LICENSE /usr/share/licenses/themis/colorsh
endef

define uninstall
	rm -rf /usr/local/lib/themis/colorsh.sh /usr/share/doc/themis/colorsh /usr/share/licenses/themis/colorsh
endef

install:
	$(install)

uninstall:
	$(uninstall)

reinstall:
	$(uninstall)
	$(install)