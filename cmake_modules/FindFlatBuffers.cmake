##############################################################################
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
##############################################################################

# Find FLATBUFFERS (flatbuffers/include, libflatbuffers.a, flatc)
# This module defines:
# FLATBUFFERS_INCLUDE_DIR, directory containing headers
# FLATBUFFERS_STATIC_LIB, path to flatbuffers's static library
# FLATBUFFERS_COMPILER, path to flatc compiler

find_path(FLATBUFFERS_INCLUDE_DIR flatbuffers/flatbuffers.h
  PATHS ${FLATBUFFERS_ROOT}/include
  NO_CMAKE_SYSTEM_PATH
  NO_SYSTEM_ENVIRONMENT_PATH)

find_library(FLATBUFFERS_STATIC_LIB libflatbuffers.a
  PATHS ${FLATBUFFERS_ROOT}/lib
  NO_CMAKE_SYSTEM_PATH
  NO_SYSTEM_ENVIRONMENT_PATH)

find_program(FLATBUFFERS_COMPILER flatc
  PATHS ${FLATBUFFERS_ROOT}/bin
  NO_CMAKE_SYSTEM_PATH
  NO_SYSTEM_ENVIRONMENT_PATH)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(FLATBUFFERS REQUIRED_VARS
  FLATBUFFERS_INCLUDE_DIR FLATBUFFERS_STATIC_LIB FLATBUFFERS_COMPILER)
