# SPDX-License-Identifier: AGPL-3.0

#    -----------------------------------------------------
#    Copyright © 2024, 2025, 2026  Pellegrino Prevete
#
#    All rights reserved
#    -----------------------------------------------------
#
#    This program is free software: you can redistribute
#    it and/or modify it under the terms of the
#    GNU Affero General Public License as published by
#    the Free Software Foundation, either version 3 of
#    the License, or (at your option) any later version.
#
#    This program is distributed in the hope that it
#    will be useful, but WITHOUT ANY WARRANTY;
#    without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#    See the GNU Affero General Public License for
#    more details.
#
#    You should have received a copy of the
#    GNU Affero General Public License
#    along with this program.
#    If not, see <https://www.gnu.org/licenses/>.

SHELL = bash
_PROJECT=android-input-utils
PREFIX ?= /usr/local
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/$(_PROJECT)
BIN_DIR=$(DESTDIR)$(PREFIX)/bin

_INSTALL_FILE=\
  install \
    -vDm644
_INSTALL_DIR=\
  install \
    -vdm755
_INSTALL_EXE=\
  install \
    -vDm755
_MAKE_EXE=\
  chmod \
    755
_MAKE_LINK=\
  ln \
    -sv

DOC_FILES=\
  $(wildcard \
      *.rst) \
  $(wildcard \
      docs/*.md)
SCRIPT_FILES=\
  $(wildcard \
      $(_PROJECT)/*)

BASH_FILES=\
  coordinates-orthonormal \
  key2keyevent \
  keyboard-hide \
  keyboard-show

all:

check: shellcheck

clean:

	rm \
	  -vrf \
	  "build"

prepare:

	git \
	  submodule \
	    update \
	    --init \
	      "man" || \
	true

shellcheck:

	shellcheck \
	  -s \
	    "bash" \
	  $(SCRIPT_FILES)

install: install-scripts install-doc install-man

install-scripts:

	for _file \
	  in $(BASH_FILES); do \
	  $(_INSTALL_EXE) \
	    "$(_PROJECT)/$${_file}" \
	    "$(BIN_DIR)/$${_file}"; \
	done

install-doc:

	install \
	  -vDm644 \
	  $(DOC_FILES) \
	  -t \
	  $(DOC_DIR)

install-man:

	make \
	  prepare
	cd \
	  "man"; \
  	make \
	  "install-man"	

uninstall: uninstall-man uninstall-scripts

uninstall-man:

	make \
	  prepare
	cd \
	  "man"; \
  	make \
	  "uninstall-man"

uninstall-scripts:

	for _file \
	  in $(BASH_FILES); do \
	  rm \
	    -vrf \
	    "$(BIN_DIR)/$${_file}" \
	done

.PHONY: check clean install install-doc install-man install-scripts shellcheck uninstall uninstall-man uninstall-scripts
