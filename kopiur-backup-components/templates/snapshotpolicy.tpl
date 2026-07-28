---
# yaml-language-server: $schema=https://k8s-schemas.home-operations.com/kopiur.home-operations.com/snapshotpolicy_v1alpha1.json
apiVersion: kopiur.home-operations.com/v1alpha1
kind: SnapshotPolicy
metadata:
  name: {{ .Release.Name }}
  namespace: {{ .Release.Namespace }}
spec:
  compression:
    compressor: zstd
  mover:
    cache:
      capacity: {{ .Values.capacity }}
      mode: Persistent
      storageClassName: {{ .Values.moverStorageClassName }}
    securityContext:
      runAsUser: {{ .Values.moverUser }}
      runAsGroup: {{ .Values.moverGroup }}
  repository:
    kind: ClusterRepository
    name: garage
  retention:
{{ toYaml .Values.retention | indent 4 }}
  sources:
    - pvc:
        name: {{ .Release.Name }}
  volumeSnapshotClassName: {{ .Values.volumeSnapshotClassName }}
