#!/bin/bash -e
session_name=aws-sso
before_profile=$1
after_profile=$2
after_account_id=$3
after_role_name=$4
after_role_arn=arn:aws:iam::${after_account_id}:role/${after_role_name}

usage_exit() {
  echo "Usage: $(basename $0) before_profile_name after_profile_name assume_account_id after_role_name" 1>&2
  exit 1
}

if [ $# -ne 4 ]; then
  usage_exit
fi

aws configure set source_profile $before_profile --profile $after_profile
aws configure set role_session_name $session_name --profile $after_profile
aws configure set role_arn $after_role_arn --profile $after_profile
