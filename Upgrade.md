# Upgrading

Use the maintenance scripts in [scripts/](scripts/) — see the Maintenance
section in the [README](README.md):

```bash
update-all          # upgrade brew, mise runtimes, rust, uv tools, npm globals
update-all --dry    # preview what would be upgraded
prune-all           # clear caches/leftovers; --deep for a full wipe
```

## Upgrade all globally installed PIP packages

Not covered by `update-all` (pip packages should generally live in uv tools or
project venvs instead):

```
pip list --outdated --format=json | python -c "import json, sys; print('\n'.join(pkg['name'] for pkg in json.load(sys.stdin)))" | xargs -n1 pip install -U
```
