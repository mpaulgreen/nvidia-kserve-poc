#!/bin/bash
echo "url : ${1}"
for i in {1..2000}
do
echo "Executing process: $i"
curl --insecure \
-k "${1}" \
-d "@llama.json" \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $API_KEY_REQUIRED_IF_EXECUTING_OUTSIDE_NGC"  > tmp/result-"${i}"&
done
