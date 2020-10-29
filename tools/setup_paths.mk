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
# Set paths for build system early setup
#
################################################################################

# Directory for tooling
TOOL_DIR = $(shell pwd)

# Directory of stamps for tracking build progress
STAMP_DIR = $(TOOL_DIR)/stamps

# Shorten stamp directory variable name for cleaner Makefile stamp idiom
S = $(STAMP_DIR)

# Directory for storing dependency repositories
REPO_DIR = $(TOOL_DIR)/repos

# Directory of building dependencies
BUILD_DIR = $(TOOL_DIR)/build

# Directory to place generated files
INSTALL_DIR = $(TOOL_DIR)/../game.shader.presets/resources/libretro

# Stamp files for build system stages
CHECKOUT_DONE = $(STAMP_DIR)/.checkout-done
BUILD_DONE = $(STAMP_DIR)/.build-done
INSTALL_DONE = $(STAMP_DIR)/.install-done
