
**`docs/service.md`**
```markdown
# Service YAML

The service YAML file defines the Kubernetes service configuration for exposing the MarioGame application.

## File Location
- [`MarioGame/service.yaml`](../MarioGame/service.yaml)

## Example
```yaml
apiVersion: v1
kind: Service
metadata:
  name: mario-game-service
spec:
  selector:
    app: mario-game
  ports:
    - protocol: TCP
      port: 80
      targetPort: 8080
  type: LoadBalancer
