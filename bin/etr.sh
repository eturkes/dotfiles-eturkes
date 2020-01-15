#!/bin/sh

# Copyright 2018-2019 Emir Turkes
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

# Enable all third-party repos

sudo zypper mr -e libdvdcss\ repository && i=1 \
    && sudo zypper mr -e multimedia:libs && i=$((i+1)) \
    && sudo zypper mr -e multimedia:apps && i=$((i+1)) \
    && sudo zypper mr -e spotify-easyrpm && i=$((i+1)) \
    && sudo zypper mr -e google-chrome && i=$((i+1)) \
    && sudo zypper mr -e skype-stable && i=$((i+1)) \
    && sudo zypper mr -e network:im:signal && i=$((i+1)) \
    && sudo zypper mr -e devel:languages:R:released && i=$((i+1)) \
    && echo ${i} repos enabled
