# components-kueue

## Purpose
This component is designed help configure the distributed compute specific components including the following items:

Kueue

Kueue is not currently officially supported as of RHOAI 2.9.

## Usage

This component can be added to a base by adding the `components` section to your overlay `kustomization.yaml` file:

```
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

resources:
  - ../../base

components:
  - ../../components/components-kueue
```

You can customize the access by updating the [patch-rhoai-dashboard.yaml](./patch-rhoai-dashboard.yaml) file.