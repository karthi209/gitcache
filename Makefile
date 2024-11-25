# ----------------------------------------------------------------------------
# Makefile for gitcache
#
# Copyright (c) 2020-2024 by Clemens Rabe <clemens.rabe@clemensrabe.de>
# All rights reserved.
# This file is part of gitcache (https://github.com/seeraven/gitcache)
# and is released under the "BSD 3-Clause License". Please see the LICENSE file
# that is included as part of this package.
# ----------------------------------------------------------------------------


# ----------------------------------------------------------------------------
#  SETTINGS
# ----------------------------------------------------------------------------
APP_NAME             := gitcache
APP_VERSION          := 1.0.21

ALL_TARGET           := check-style.venv
SCRIPT               := src/gitcache

RHEL_VERSIONS        := 8
MAKE4PY_DOCKER_IMAGE := make4py-gitcache
MAKE4PY_DOCKER_PKGS  := git git-lfs python3-pip
PYINSTALLER_ARGS_LINUX := --clean --onefile


# ----------------------------------------------------------------------------
#  MAKE4PY INTEGRATION
# ----------------------------------------------------------------------------
include make4py/make4py.mk


# ----------------------------------------------------------------------------
#  OWN TARGETS
# ----------------------------------------------------------------------------
.PHONY: precheck-releases

precheck-releases: check-style.rhel8 tests.all doc man releases test-releases


# ----------------------------------------------------------------------------
#  EOF
# ----------------------------------------------------------------------------
