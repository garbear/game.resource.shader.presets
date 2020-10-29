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

# Dependency name and version
COMMON_SHADERS_REPO_NAME = common-shaders
COMMON_SHADERS_VERSION = c2b31d5ac59796aa70b3d0900416258c018010ec
COMMON_SHADERS_REMOTE_REPO = https://github.com/libretro/$(COMMON_SHADERS_REPO_NAME).git
#COMMON_SHADERS_LIB = libade.a

################################################################################
#
# Paths
#
################################################################################

# Checkout directory
REPO_DIR_COMMON_SHADERS = $(REPO_DIR)/$(COMMON_SHADERS_REPO_NAME)

# Build directory
BUILD_DIR_COMMON_SHADERS = $(BUILD_DIR)/$(COMMON_SHADERS_REPO_NAME)

# Install output
INSTALL_DIR_COMMON_SHADERS = $(INSTALL_DIR)/hlsl

################################################################################
#
# Checkout
#
################################################################################

$(S)/checkout-common-shaders: $(S)/.precheckout
	[ -d "$(REPO_DIR_COMMON_SHADERS)" ] || \
	  git clone "$(COMMON_SHADERS_REMOTE_REPO)" "$(REPO_DIR_COMMON_SHADERS)"

	cd "$(REPO_DIR_COMMON_SHADERS)" && \
	  git reset --hard $(COMMON_SHADERS_VERSION)

	touch "$@"

################################################################################
#
# Build
#
################################################################################

$(S)/build-common-shaders: $(S)/.prebuild $(S)/checkout-common-shaders
	mkdir -p "$(BUILD_DIR_COMMON_SHADERS)"

	# TODO

	touch "$@"

################################################################################
#
# Install
#
################################################################################

$(S)/install-common-shaders: $(S)/.preinstall $(S)/build-common-shaders
	mkdir -p "$(DEPENDS_DIR)"

	# TODO

	touch "$@"

$(S)/install-common-shaders: $(INSTALL_FILE_ADE)
	touch "$@"
