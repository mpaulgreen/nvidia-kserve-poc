### Pre-reqs
- This is a POC and hence some values are hardcoded
- Create a secret named `registry-secret` for ngc registry
- Create a secret named `mpaulgreen-mpaulrobo-pull-secret` to access images from private image registry
    
### Create the PVC
```
oc apply -f pvc.yaml
```
### Build the ngc pull image
```
sudo podman build -t quay.io/mpaulgreen/ngc-pull:0.6 -f ./ngcpull_Dockerfile --no-cache
sudo podman push quay.io/mpaulgreen/ngc-pull:0.6
```

### Build the image to run the job
```
sudo podman build -t quay.io/mpaulgreen/ngc-job:0.6 -f ./createjob_Dockerfile --no-cache
sudo podman push quay.io/mpaulgreen/ngc-job:0.6
```

### Create role, role bindings and sa for creating an deleting the job
```
oc apply -f jobrobot_rolebinding.yaml
oc apply -f jobrobot_role.yaml
oc apply -f jobrobot_sa.yaml
```


### Create a pod to start the job 
- This was done in this way to plug this in an initContainer if available
```
oc apply -f pod.yaml
```

### Technical Debts remained in POC
- To delete the job once it is completed
- [Update the tolerations here in the pod](https://github.com/mpaulgreen/nvidia-kserve-poc/blob/main/nim-runtime-published/a100/pvc-mount/build-job/pod.yaml#L38-L44)
- [Update the tolerations here in the main.py](https://github.com/mpaulgreen/nvidia-kserve-poc/blob/main/nim-runtime-published/a100/pvc-mount/build-job/main.py#L75-L84)

