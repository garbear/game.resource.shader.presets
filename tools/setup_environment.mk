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
# Set properties based on the environment
#
################################################################################

#
# Operating system detection
#

PLATFORM =
ifeq ($(OS),Windows_NT)
	PLATFORM = windows
else
	KERNEL_NAME = $(shell uname -s)
	ifeq ($(KERNEL_NAME),Linux)
		PLATFORM = linux
	else ifeq ($(KERNEL_NAME),Darwin)
		PLATFORM = darwin
	else
		PROCESSOR = $(shell uname -p)
		ifneq ($(filter arm%,$(PROCESSOR)),)
			PLATFORM = arm
		endif
	endif
endif
