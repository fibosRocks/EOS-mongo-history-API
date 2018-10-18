#!/bin/bash
mongodb='docker exec -it mongo mongo'
$mongodb <<EOF

use fibos
db.action_traces.ensureIndex({"receipt.receiver":1})
db.blocks.ensureIndex({ "block.block_num": -1 })

exit;
EOF