# Scenario - The runtime downloads the model to in memory storage and serves the model using KServe
## Create the runtime
```
oc apply -f runtime.yaml
```

## Create the inference
```
oc apply -f inference.yaml
```

## get the inference service URL
```
oc get inferenceservice
```