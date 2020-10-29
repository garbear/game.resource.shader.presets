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
GLSL_SHADERS_REPO_NAME = glsl-shaders
GLSL_SHADERS_VERSION = 1af3489f0cf375ad9f9e8bb0e37fa33289a71201
GLSL_SHADERS_REMOTE_REPO = https://github.com/libretro/$(GLSL_SHADERS_REPO_NAME).git
#GLSL_SHADERS_LIB = libade.a

################################################################################
#
# Paths
#
################################################################################

# Checkout directory
REPO_DIR_GLSL_SHADERS = $(REPO_DIR)/$(GLSL_SHADERS_REPO_NAME)

# Build directory
BUILD_DIR_GLSL_SHADERS = $(BUILD_DIR)/$(GLSL_SHADERS_REPO_NAME)

# Install output
INSTALL_DIR_GLSL_SHADERS = $(INSTALL_DIR)/glsl

################################################################################
#
# Checkout
#
################################################################################

$(S)/checkout-glsl-shaders: $(S)/.precheckout
	[ -d "$(REPO_DIR_GLSL_SHADERS)" ] || \
	  git clone "$(GLSL_SHADERS_REMOTE_REPO)" "$(REPO_DIR_GLSL_SHADERS)"

	cd "$(REPO_DIR_GLSL_SHADERS)" && \
	  git reset --hard $(GLSL_SHADERS_VERSION)

	touch "$@"

################################################################################
#
# Build
#
################################################################################

$(S)/build-glsl-shaders: $(S)/.prebuild $(S)/checkout-glsl-shaders
	mkdir -p "$(BUILD_DIR_GLSL_SHADERS)"

	# TODO

	touch "$@"

################################################################################
#
# Install
#
################################################################################

$(S)/install-glsl-shaders: $(S)/.preinstall $(S)/build-glsl-shaders
	mkdir -p "$(DEPENDS_DIR)"

	# TODO

	touch "$@"

$(S)/install-glsl-shaders: $(INSTALL_FILE_ADE)
	touch "$@"
