# Deployment YAML

The deployment YAML file defines the Kubernetes deployment configuration for the MarioGame application.

## File Location
- [`MarioGame/deployment.yaml`](../MarioGame/deployment.yaml)

## Example
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mario-game
spec:
  replicas: 2
  template:
    metadata:
      labels:
        app: mario-game
    spec:
      containers:
      - name: mario-container
        image: mario-game:latest
        ports:
        - containerPort: 8080
