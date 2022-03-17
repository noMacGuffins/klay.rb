# Copyright (c) 2016-2022 The Ruby-Eth Contributors
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

require "bigdecimal"

# Provides the {Klay} module.
module Klay

  # Provides constants for common Ethereum units.
  module Unit
    extend self

    # Ethereum unit 1 peb := 0.000000000000000001 Klay.
    PEB = BigDecimal("1e0").freeze

    # Ethereum unit 1 ston := 0.000000001 Klay or 1_000_000_000 peb.
    STON = BigDecimal("1e9").freeze

    # Ethereum unit 1 Klay := 1_000_000_000_000_000_000 peb.
    ETHER = BigDecimal("1e18").freeze

    # Ethereum unit 1 Gpeb := 0.000000001 Ether or 1_000_000_000 peb.
    # Same as shannon, but more commonly used (billion peb).
    GPEB = STON.freeze
  end
end
