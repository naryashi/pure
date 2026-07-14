{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    # Build System & Core Tools
    gnumake
    cmake
    ninja
    pkg-config

    # C/C++ Toolchain
    clang
    clang-tools

    # Nix Toolchain
    nix
    nil
    nixfmt
    nix-tree
    nix-output-monitor
    nix-update
    nix-init
    deadnix
    statix
    nix-eval-jobs

    # Python Toolchain
    python3
    uv
    ruff
    pyright
    mypy

    # Rust Toolchain
    rustup
    cargo-watch
    cargo-edit
    cargo-expand
    cargo-outdated
    cargo-audit
    cargo-deny
    cargo-tarpaulin
    rust-bindgen
    wasm-pack

    #C#
    dotnet-sdk
    mono
    omnisharp-roslyn
    csharp-ls
    nuget
    dotnet-ef

    #Exercism
    exercism
  ];
}
