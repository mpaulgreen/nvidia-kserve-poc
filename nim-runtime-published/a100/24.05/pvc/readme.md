# Scenario - Download the model to a PVC first then serve the model using KServe
## Download the model
```
ngc registry model download-version --dest "./" "mphexwv2ysej/meta-llama3-8b-instruct:0515-db4a5074-trtllm10-1xa100-fp16"
```
## Download image
```
ngc registry image pull nvcr.io/mphexwv2ysej/meta-llama3-8b-instruct:24.05.rc11
```

## Create the PVC
```
oc apply -f pvc.yaml
```

## Create the pvc-access pod
```
oc apply -f pod.yaml
```
## Download the model inside the container
```
wget "https://api.ngc.nvidia.com/v2/resources/nvidia/ngc-apps/ngc_cli/versions/3.41.4/files/ngccli_linux.zip" -O ngccli_linux.zip && unzip ngccli_linux.zip
```
```
chmod u+x ngc-cli/ngc
```
```
NGC_EXE=$(pwd)/ngc-cli/ngc
```
```
$NGC_EXE config set
```
```
$NGC_EXE registry model download-version --dest "./model-store/cache" "mphexwv2ysej/meta-llama3-8b-instruct:0515-db4a5074-trtllm10-1xa100-fp16"
```

## Create the runtime
```
oc apply -f runtime.yaml
```

## Create the inference
```
oc apply -f inference.yaml
```