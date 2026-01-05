---
type: "always_apply"
---

## Personal Python/Django Rules

### Command Execution
- Never run a shell command without prefixing `uv run` to it

### Testing
- Always run pytest with the argument `--reuse-db`
- Always use pytest style test functions with fixtures
- Never add docstrings to test functions
- Never add comments to or before test assertions
- Do not put test functions into a class. Just use free functions for tests

### Python Code Style
- Always use type hinting
- Always put imports at the top of the file
- Never put imports into functions
- **NEVER PUT IMPORTS IN A FUNCTION!**
- Never use typing imports Dict, Tuple, Set, or Optional
- Use match case over if...else when you can

### Editor Behavior (Awareness)
- The editor will automatically apply ruff formatting when you save
- Whenever you save a file all unused imports will automatically be deleted
