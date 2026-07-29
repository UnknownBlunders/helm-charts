---
# yaml-language-server: $schema=https://k8s-schemas.home-operations.com/kopiur.home-operations.com/restore_v1alpha1.json
apiVersion: kopiur.home-operations.com/v1alpha1
kind: Restore
metadata:
  name: {{ .Release.Name }}
  namespace: {{ .Release.Namespace }}
spec:
  policy:
    onMissingSnapshot: Continue
  source:
    fromPolicy:
      name: {{ .Release.Name }}
      offset: 0
  target:
    populator: {}
