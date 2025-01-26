## Upgrade all globally installed PIP packages

```
pip list --outdated --format=json | python -c "import json, sys; print('\n'.join(pkg['name'] for pkg in json.load(sys.stdin)))" | xargs -n1 pip install -U
```