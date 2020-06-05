#!/bin/sh

SOPHOSAPP=/usr/local/bin/sgdeadmin

if [ -f $SOPHOSAPP ]; then
    RECOVERYKEY=/usr/local/bin/sgdeadmin --status | grep "Recovery key" | awk -F ":" '{print $2}'
    echo "<result>$RECOVERYKEY</result>"
else
    echo "<result>Not Installed</result>"
fi
