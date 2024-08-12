## Enable monitoring of NIM models - Archived for NIM 24.01 and RHOAI 2.71

#### The following steps are identified in Openshift AI docs for RHOAI 2.7.0
```
oc apply -f uwm-cm-conf.yaml # step not required if already defined in the cluster
oc apply -f uwm-cm-enable.yaml # step not required if already defined in the cluster
oc apply -f servicemonitor.yaml
oc apply -f podmonitor.yaml
```

[Deploy the model](https://github.com/mpaulgreen/nvidia-kserve-poc/blob/main/nim-runtime-published/a100/pvc-mount/README.md)

#### Added the monitor for NIM model
```
oc apply -f model-podmonitor.yaml
```

![Metrics](./metrics.png?raw=true "Title")

#### Potential Technical Debt
- The metrics took a while in showing up. It should have take just over 30s - Assign