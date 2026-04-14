  # Bash Toolchain

  - State: scaffold-only next-20 prep
  - Toolchain source: `built-in`

  ## Planned commands after promotion
    - `bash --version`
- `shellcheck --version`

  ## Scaffold-time checks
  - `python3 scripts/validate_scaffold.py`
  - `/nix/var/nix/profiles/default/bin/nix --extra-experimental-features 'nix-command flakes' flake lock`

  ## Current limitation
  - Bash and shellcheck are already available.
