#!/bin/bash

curl \
    -H "Authorization: token ${GITHUB_TOKEN}" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -X POST \
    -d "{
        \"event\": \"APPROVE\",
        \"commit_id\": \"${GITHUB_SHA}\"
    }" \
    "${GITHUB_PR_SELF}/reviews"
