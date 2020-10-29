################################################################################
#
#  Copyright (C) 2020 RetroPlayer Rockstars
#
#  This file is part of Kodi's shader preset support add-on.
#  https://github.com/kodi-game/game.shader.presets
#
#  SPDX-License-Identifier: GPL-3.0-or-later
#  See the file LICENSE for more information.
#
################################################################################

################################################################################
#
# Build system stages
#
################################################################################

include setup_paths.mk

# Phony targets for build stages
.PHONY: checkout
.PHONY: build
.PHONY: install
.PHONY: all
.PHONE: clean
.PHONY: distclean

# Set the stage used when make is called with no arguments
all: install

################################################################################
#
# Build stage setup
#
################################################################################

#
# Setup checkout stage
#

$(S)/.precheckout:
	mkdir -p "$(S)" # Stamp directory
	mkdir -p "$(REPO_DIR)"

	touch "$@"

#
# Setup build stage
#

$(S)/.prebuild:
	mkdir -p "$(S)" # Stamp directory
	mkdir -p "$(BUILD_DIR)"

	touch "$@"

#
# Setup install stage
#

$(S)/.preinstall:
	mkdir -p "$(S)" # Stamp directory
	mkdir -p "$(INSTALL_DIR)"

	touch "$@"
