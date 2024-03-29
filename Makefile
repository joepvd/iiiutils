TARGETS ?= $(shell find . -maxdepth 1 -executable -type f  -printf '%P ')
INSTALL_DIR ?= ~/bin

INSTALL_TARGETS = $(addprefix install-,$(TARGETS))
UNINSTALL_TARGETS = $(addprefix uninstall-,$(TARGETS))

.PHONY: install
install: $(INSTALL_TARGETS)

.PHONY: uninstall
uninstall: $(UNINSTALL_TARGETS)

install-%:
	ln -sf ${CURDIR}/$* $(INSTALL_DIR)/$*

uninstall-%:
	rm -f $(INSTALL_DIR)/$*
