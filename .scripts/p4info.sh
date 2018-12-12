#!/bin/bash

root_depot_loc=$1
changes_cmd="p4 changes -c $P4CLIENT"
echo "Changelists for $P4CLIENT, $P4USER, $P4PORT ($changes_cmd):"
$changes_cmd

echo
echo "\`p4 opened\` to see the opened files:"
echo "\`p4 revert -c changelist# //...\` to revert files within the changelist"
echo "\`p4diffall.sh changelist#\` to list all changes between opened files in the workspace and the given changelist"
echo

echo "\`p4 describe changelist#\` to list opened files of a changelist"
echo "\`p4 describe -sS changelist#\` to list shelved files of a changelist"
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

echo
list_submitted_cmd="p4 changes -s submitted -m 10 $root_depot_loc" # -L for long output
echo "\`$list_submitted_cmd\`"
