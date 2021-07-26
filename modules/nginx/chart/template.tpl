replicaCount: ${replicas}

deployment:
  name: ${deployment-name}

image:
  repository: nginx
  pullPolicy: IfNotPresent
  tag: ${app-version}

service:
  type: ClusterIP
  port: 80

resources:
  limits:
    cpu: 100m
    memory: 128Mi
  requests:
    cpu: 100m
    memory: 128Mi