# Upgrading

Use the maintenance scripts in [scripts/](scripts/) — see the Maintenance
section in the [README](README.md):

```bash
update-all          # upgrade brew, mise runtimes, rust, uv tools, go binaries, npm + pip globals
update-all --dry    # preview what would be upgraded
prune-all           # clear caches/leftovers; --deep for a full wipe
```
