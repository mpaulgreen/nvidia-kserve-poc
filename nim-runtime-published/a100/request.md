# CLI 

## Using route
```
curl --insecure -k https://is-nim-kserve-test.apps.ai-dev03.kni.syseng.devcluster.openshift.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY_REQUIRED_IF_EXECUTING_OUTSIDE_NGC" \
  -d '{
    "model": "llama-2-7b-chat",
    "messages": [{"role":"user","content":"where do I go in spain"}],
    "temperature": 0.5,   
    "max_tokens": 1024,
    "stream": false                
  }'
```
## using localhost
```
curl -k http://localhost:8080/v1/chat/completions \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $API_KEY_REQUIRED_IF_EXECUTING_OUTSIDE_NGC" \
-d '{
  "model": "llama-2-7b-chat",
  "messages": [{"role":"user","content":"where do I go in spain"}],
  "temperature": 0.5,   
  "max_tokens": 1024,
  "stream": false                
}'
```



# GUI

## llama
```
curl --insecure -k https://llama-2-7b-chat-pvc-llama.apps.ai-dev03.kni.syseng.devcluster.openshift.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY_REQUIRED_IF_EXECUTING_OUTSIDE_NGC" \
  -d '{
    "model": "llama-2-7b-chat",
    "messages": [{"role":"user","content":"where do I go in spain"}],
    "temperature": 0.5,   
    "max_tokens": 1024,
    "stream": false                
  }'
```

## Mistral

```
curl --insecure -k https://mistral-7b-instruct-mistral.apps.ai-dev03.kni.syseng.devcluster.openshift.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY_REQUIRED_IF_EXECUTING_OUTSIDE_NGC" \
  -d '{
    "model": "mistral-7b-instruct",
    "messages": [{"role":"user","content":"where do I go in spain"}],
    "temperature": 0.5,   
    "max_tokens": 1024,
    "stream": false                
  }'
```