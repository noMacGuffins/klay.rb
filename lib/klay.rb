# Copyright (c) 2016-2022 The Ruby-Klay Contributors
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

# Provides the {Klay} module.
module Klay
end

# Loads the {Klay} module classes.
require "klay/abi"
require "klay/api"
require "klay/address"
require "klay/chain"
require "klay/constant"
require "klay/client"
require "klay/client/http"
require "klay/client/ipc"
require "klay/eip712"
require "klay/key"
require "klay/rlp"
require "klay/signature"
require "klay/tx"
require "klay/unit"
require "klay/util"
require "klay/version"
