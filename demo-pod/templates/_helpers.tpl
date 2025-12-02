{{- define "demo-pod.name" -}}
demo-pod
{{- end }}

{{- define "demo-pod.fullname" -}}
{{ include "demo-pod.name" . }}
{{- end }}

{{- define "demo-pod.serviceAccountName" -}}
{{- if .Values.serviceAccount.name }}
{{ .Values.serviceAccount.name }}
{{- else }}
{{ include "demo-pod.name" . }}
{{- end }}
{{- end }}
