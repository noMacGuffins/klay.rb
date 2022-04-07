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

    # Implements the available RPC-APIs provided by Gklay version 1.10.15.
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
      "debug_gklayeaderRlp",
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
      "debug_sklayead",
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
      "klay_accounts",
      "klay_blockNumber",
      "klay_call",
      "klay_chainId",
      "klay_coinbase",
      "klay_compile",
      "klay_contract",
      "klay_createAccessList",
      "klay_defaultAccount",
      "klay_defaultBlock",
      "klay_estimateGas",
      "klay_feeHistory",
      "klay_fillTransaction",
      "klay_filter",
      "klay_gasPrice",
      "klay_getAccounts",
      "klay_getBalance",
      "klay_getBlock",
      "klay_getBlockByHash",
      "klay_getBlockByNumber",
      "klay_getBlockNumber",
      "klay_getBlockTransactionCount",
      "klay_getBlockTransactionCountByHash",
      "klay_getBlockTransactionCountByNumber",
      "klay_getBlockUncleCount",
      "klay_getCode",
      "klay_getCoinbase",
      "klay_getCompilers",
      "klay_getFilterChanges",
      "klay_getFilterLogs",
      "klay_getGasPrice",
      "klay_gklayashrate",
      "klay_gklayeaderByHash",
      "klay_gklayeaderByNumber",
      "klay_getLogs",
      "klay_getMaxPriorityFeePerGas",
      "klay_getMining",
      "klay_getPendingTransactions",
      "klay_getProof",
      "klay_getProtocolVersion",
      "klay_getRawTransaction",
      "klay_getRawTransactionFromBlock",
      "klay_getStorageAt",
      "klay_getSyncing",
      "klay_getTransaction",
      "klay_getTransactionByBlockHashAndIndex",
      "klay_getTransactionByBlockNumberAndIndex",
      "klay_getTransactionByHash",
      "klay_getTransactionCount",
      "klay_getTransactionFromBlock",
      "klay_getTransactionReceipt",
      "klay_getUncle",
      "klay_getUncleCountByBlockHash",
      "klay_getUncleCountByBlockNumber",
      "klay_getWork",
      "klay_hashrate",
      "klay_iban",
      "klay_icapNamereg",
      "klay_isSyncing",
      "klay_maxPriorityFeePerGas",
      "klay_mining",
      "klay_namereg",
      "klay_newBlockFilter",
      "klay_newFilter",
      "klay_newPendingTransactionFilter",
      "klay_pendingTransactions",
      "klay_protocolVersion",
      "klay_resend",
      "klay_sendIBANTransaction",
      "klay_sendRawTransaction",
      "klay_sendTransaction",
      "klay_sign",
      "klay_signTransaction",
      "klay_submitHashrate",
      "klay_submitTransaction",
      "klay_submitWork",
      "klay_subscribe",
      "klay_syncing",
      "klay_uninstallFilter",
      "klay_unsubscribe",
      "les_addBalance",
      "les_clientInfo",
      "les_getCheckpoint",
      "les_getCheckpointContractAddress",
      "les_latestCheckpoint",
      "les_priorityClientInfo",
      "les_serverInfo",
      "les_setClientParams",
      "les_setDefaultParams",
      "miner_gklayashrate",
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
