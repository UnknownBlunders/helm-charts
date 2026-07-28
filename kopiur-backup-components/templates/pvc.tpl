---
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: {{ .Release.Name }}
  namespace: {{ .Release.Namespace }}
spec:
  accessModes:
    - {{ .Values.pvcAccessMode }}
  dataSourceRef:
    apiGroup: kopiur.home-operations.com
    kind: Restore
    name: {{ .Release.Name }}
  resources:
    requests:
      storage: {{ .Values.capacity }}
  storageClassName: {{ .Values.pvcStorageClassName }}
