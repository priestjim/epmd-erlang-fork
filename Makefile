#
# %CopyrightBegin%
# 
# Copyright Peer Stritzinger GmbH 2013-2015. All Rights Reserved.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# 
# %CopyrightEnd%
#
#

# Makefile

mnt = $(HOME)/export/uid-mnt

EPMD_PORT_NO=4369
EPMD_NODE_TYPE=110
EPMD_DIST_LOW=5
EPMD_DIST_HIGH=5

all: all-erlang

all-erlang: ebin
	erl -make

ebin:
	mkdir ebin

clean: ebin
	-rm -rf ebin/*.beam

