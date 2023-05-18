#!/bin/bash
function create_backupImage {
  local instance_id=$1
  local tag_name="$2-backup-$(date +%m%d%-H%M)"
  local command=$(./ncloud vserver createMemberServerImageInstance --regionCode FKR --serverInstanceNo "$instance_id" --memberServerImageName "$tag_name")
  echo "$command"
}

#19397
instances=$(./ncloud vserver getServerInstanceList --regionCode FKR --vpcNo $1 | jq -r '.getServerInstanceListResponse.serverInstanceList[] | {"serverInstanceNo" : .serverInstanceNo, "serverName" : .serverName}')

instances_array=$(echo "$instances" | jq --slurp '.')


length=$(echo "$instances_array" | jq length)


for ((i=0; i<$length; i++)); do
  instance=$(echo "$instances_array" | jq -r ".[$i]")
  instance_id=$(echo "$instance" | jq -r '.serverInstanceNo')
  instance_name=$(echo "$instance" | jq -r '.serverName')

    command=$(create_backupImage "$instance_id" "$instance_name")
    echo "Created instance $command"
done
