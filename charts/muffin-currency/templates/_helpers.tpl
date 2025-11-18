{{- define "muffin.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "muffin.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- include "muffin.name" . -}}
{{- end -}}
{{- end -}}

{{- define "muffin.labels" -}}
app: {{ include "muffin.name" . }}
{{- end -}}

{{- define "muffin.selectorLabels" -}}
app: {{ include "muffin.name" . }}
{{- end -}}
