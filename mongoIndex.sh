#!/bin/bash
mongodb='docker exec -it mongo mongo'
$mongodb <<EOF

use fibos
db.action_traces.ensureIndex({act.account:1})
db.action_traces.ensureIndex({act.name:1})
db.action_traces.ensureIndex({act.data.receiver:1})
db.action_traces.ensureIndex({act.data.from:1})
db.action_traces.ensureIndex({act.data.to:1})
db.action_traces.ensureIndex({act.data.name:1})
db.action_traces.ensureIndex({act.data.voter:1})
db.action_traces.ensureIndex({act.authorization.actor:1})

exit;
EOF