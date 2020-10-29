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
# Toolchain for shader presets
#
# The primary build stages that can be specified on the command line are:
#
#   1. checkout
#   2. build
#   3. install (default if no stage is given)
#
# Two stages are used for cleaning temoprary files:
#
#   1. clean
#   2. distclean
#
# "make checkout" will clone the libretro shader preset repos.
#
# "make build" will generate shaders to package with the add-on.
#
# "make install" will copy the generated shaders to the folder
# `game.shader.presets/resources/libretro`. Shaders must be committed manually.
#
# "make clean" is used to remove temporary build artifacts.
#
# "make distclean" is used to remove all temporary files and reset the tools/
# directory to an unused state.
#
# This Makefile depends on the following packages:
#
#   - curl
#   - python3
#   - unzip
#
################################################################################

# Build system setup
include setup_stages.mk
include setup_paths.mk

# Build parameter setup
include setup_environment.mk

# Define the shell used to execute commands
SHELL := /bin/bash

################################################################################
#
# Import package rules
#
################################################################################

include depends/common-shaders/package.mk
include depends/glsl-shaders/package.mk

################################################################################
#
# Build system targets
#
# Defines the targets that are build when "make" is run.
#
################################################################################

#
# Define targets for "make checkout"
#

CHECKOUT_DEPENDS = \
  $(S)/checkout-common-shaders \
  $(S)/checkout-glsl-shaders \

#
# Define targets for "make build"
#

BUILD_DEPENDS = \
  $(S)/build-common-shaders \
  $(S)/build-glsl-shaders \

#
# Define targets for "make install"
#

INSTALL_DEPENDS = \
  $(S)/install-common-shaders \
  $(S)/install-glsl-shaders \

#
# Inject targets
#

checkout: $(CHECKOUT_DEPENDS)
build: $(BUILD_DEPENDS)
install: $(INSTALL_DEPENDS)

#
# Define targets for building individual depends via "make <depend>"
#

.PHONY: common-shaders
.PHONY: glsl-shaders

common-shaders: \
  $(S)/install-common-shaders

glsl-shaders: \
  $(S)/install-glsl-shaders

################################################################################
#
# Build system procedures
#
################################################################################

#
# Clean stage
#

clean:
	rm -rf "$(BUILD_DIR)"
	rm -rf "$(S)"  # Stamp directory

#
# Distclean stage
#

distclean: clean
	rm -rf "$(REPO_DIR)"
