{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs_18  # Use Node.js 18.x for good compatibility; adjust if needed.
    pkgs.git        # For git commands if not installed globally
  ];
  shellHook = ''
    echo "You can now run 'npm install' and 'npm run dev'"
  '';
}
