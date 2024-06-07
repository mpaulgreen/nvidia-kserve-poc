curl --insecure -k https://llama3-8b-instruct-1xgpu-local-llama.apps.ai-dev03.kni.syseng.devcluster.openshift.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY_REQUIRED_IF_EXECUTING_OUTSIDE_NGC" \
  -d '{
  "model": "meta-llama3-8b-instruct",
  "messages": [{"role":"user","content":"where do I go in spain"}],
  "temperature": 0.5,   
  "max_tokens": 1024,
  "stream": false                
}'