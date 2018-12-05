#!/bin/bash

changes_cmd="p4 changes -c $P4CLIENT"
echo "Changelists for $P4CLIENT, $P4USER, $P4PORT ($changes_cmd):"
$changes_cmd

echo

echo "\`p4 describe changelist#\` to describe one of the above changelists"
echo
echo "\`p4 unshelve -s toGetChangelist# -c toPlaceIntoChangelist#\`"
echo
echo "\`p4 diff <filename>\` to diff file's workspace and have revisions"
echo "\`p4 diff\` to diff the workspace with the depot"
echo
echo "\`p4 change\` to create a new changelist"

echo

sync_check_cmd="p4 update -n"
echo "Checking if we have to update to latest ($sync_check_cmd)"
$sync_check_cmd
