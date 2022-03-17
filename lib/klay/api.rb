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

  # Provides the `Klay::Api` module grouping known RPC commands.
  module Api

    # Implements the available RPC-APIs provided by Geth version 1.10.15.
    COMMANDS = [
      "admin_addPeer",
      "admin_addTrustedPeer",
      "admin_clearHistory",
      "admin_datadir",
      "admin_exportChain",
      "admin_getDatadir",
      "admin_getNodeInfo",
      "admin_getPeers",
      "admin_importChain",
      "admin_nodeInfo",
      "admin_peers",
      "admin_removePeer",
      "admin_removeTrustedPeer",
      "admin_sleep",
      "admin_sleepBlocks",
      "admin_startHTTP",
      "admin_startRPC",
      "admin_startWS",
      "admin_stopHTTP",
      "admin_stopRPC",
      "admin_stopWS",
      "clique_discard",
      "clique_getProposals",
      "clique_getSigner",
      "clique_getSigners",
      "clique_getSignersAtHash",
      "clique_getSnapshot",
      "clique_getSnapshotAtHash",
      "clique_proposals",
      "clique_propose",
      "clique_status",
      "debug_accountRange",
      "debug_backtraceAt",
      "debug_blockProfile",
      "debug_chaindbCompact",
      "debug_chaindbProperty",
      "debug_cpuProfile",
      "debug_dumpBlock",
      "debug_freeOSMemory",
      "debug_freezeClient",
      "debug_gcStats",
      "debug_getAccessibleState",
      "debug_getBadBlocks",
      "debug_getBlockRlp",
      "debug_getHeaderRlp",
      "debug_getModifiedAccountsByHash",
      "debug_getModifiedAccountsByNumber",
      "debug_goTrace",
      "debug_intermediateRoots",
      "debug_memStats",
      "debug_mutexProfile",
      "debug_preimage",
      "debug_printBlock",
      "debug_seedHash",
      "debug_setBlockProfileRate",
      "debug_setGCPercent",
      "debug_setHead",
      "debug_setMutexProfileFraction",
      "debug_stacks",
      "debug_standardTraceBadBlockToFile",
      "debug_standardTraceBlockToFile",
      "debug_startCPUProfile",
      "debug_startGoTrace",
      "debug_stopCPUProfile",
      "debug_stopGoTrace",
      "debug_storageRangeAt",
      "debug_testSignCliqueBlock",
      "debug_traceBadBlock",
      "debug_traceBlock",
      "debug_traceBlockByHash",
      "debug_traceBlockByNumber",
      "debug_traceBlockFromFile",
      "debug_traceCall",
      "debug_traceTransaction",
      "debug_verbosity",
      "debug_vmodule",
      "debug_writeBlockProfile",
      "debug_writeMemProfile",
      "debug_writeMutexProfile",
      "eth_accounts",
      "eth_blockNumber",
      "eth_call",
      "eth_chainId",
      "eth_coinbase",
      "eth_compile",
      "eth_contract",
      "eth_createAccessList",
      "eth_defaultAccount",
      "eth_defaultBlock",
      "eth_estimateGas",
      "eth_feeHistory",
      "eth_fillTransaction",
      "eth_filter",
      "eth_gasPrice",
      "eth_getAccounts",
      "eth_getBalance",
      "eth_getBlock",
      "eth_getBlockByHash",
      "eth_getBlockByNumber",
      "eth_getBlockNumber",
      "eth_getBlockTransactionCount",
      "eth_getBlockTransactionCountByHash",
      "eth_getBlockTransactionCountByNumber",
      "eth_getBlockUncleCount",
      "eth_getCode",
      "eth_getCoinbase",
      "eth_getCompilers",
      "eth_getFilterChanges",
      "eth_getFilterLogs",
      "eth_getGasPrice",
      "eth_getHashrate",
      "eth_getHeaderByHash",
      "eth_getHeaderByNumber",
      "eth_getLogs",
      "eth_getMaxPriorityFeePerGas",
      "eth_getMining",
      "eth_getPendingTransactions",
      "eth_getProof",
      "eth_getProtocolVersion",
      "eth_getRawTransaction",
      "eth_getRawTransactionFromBlock",
      "eth_getStorageAt",
      "eth_getSyncing",
      "eth_getTransaction",
      "eth_getTransactionByBlockHashAndIndex",
      "eth_getTransactionByBlockNumberAndIndex",
      "eth_getTransactionByHash",
      "eth_getTransactionCount",
      "eth_getTransactionFromBlock",
      "eth_getTransactionReceipt",
      "eth_getUncle",
      "eth_getUncleCountByBlockHash",
      "eth_getUncleCountByBlockNumber",
      "eth_getWork",
      "eth_hashrate",
      "eth_iban",
      "eth_icapNamereg",
      "eth_isSyncing",
      "eth_maxPriorityFeePerGas",
      "eth_mining",
      "eth_namereg",
      "eth_newBlockFilter",
      "eth_newFilter",
      "eth_newPendingTransactionFilter",
      "eth_pendingTransactions",
      "eth_protocolVersion",
      "eth_resend",
      "eth_sendIBANTransaction",
      "eth_sendRawTransaction",
      "eth_sendTransaction",
      "eth_sign",
      "eth_signTransaction",
      "eth_submitHashrate",
      "eth_submitTransaction",
      "eth_submitWork",
      "eth_subscribe",
      "eth_syncing",
      "eth_uninstallFilter",
      "eth_unsubscribe",
      "les_addBalance",
      "les_clientInfo",
      "les_getCheckpoint",
      "les_getCheckpointContractAddress",
      "les_latestCheckpoint",
      "les_priorityClientInfo",
      "les_serverInfo",
      "les_setClientParams",
      "les_setDefaultParams",
      "miner_getHashrate",
      "miner_setKlayerbase",
      "miner_setExtra",
      "miner_setGasLimit",
      "miner_setGasPrice",
      "miner_start",
      "miner_stop",
      "personal_deriveAccount",
      "personal_ecRecover",
      "personal_getListAccounts",
      "personal_getListWallets",
      "personal_importRawKey",
      "personal_initializeWallet",
      "personal_listAccounts",
      "personal_listWallets",
      "personal_lockAccount",
      "personal_newAccount",
      "personal_openWallet",
      "personal_sendTransaction",
      "personal_sign",
      "personal_signTransaction",
      "personal_unlockAccount",
      "personal_unpair",
      "txpool_content",
      "txpool_contentFrom",
      "txpool_getContent",
      "txpool_getInspect",
      "txpool_getStatus",
      "txpool_inspect",
      "txpool_status",
    ]
  end
end
