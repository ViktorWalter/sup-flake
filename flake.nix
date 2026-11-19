{
  description = "Sup, a console-based email client, packaged as a bundlerApp";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };

        sup = pkgs.bundlerApp {
          pname = "sup";
          gemdir = ./gems;

          exes = [
            "sup"
            "sup-add"
            "sup-config"
            "sup-dump"
            "sup-import-dump"
            "sup-recover-sources"
            "sup-sync"
            "sup-sync-back-maildir"
            "sup-tweak-labels"
          ];

          gemConfig = pkgs.defaultGemConfig // {
            # Newer Rubies (3.3+) run with frozen string literals, which
            # breaks the old rmail gem. Apply upstream's fix, as used in
            # sup's own contrib/nix/*-shell.nix files.
            rmail = attrs: {
              dontBuild = false;
              patches = [
                (pkgs.fetchpatch2 {
                  name = "rmail-frozen-string-literals.patch";
                  url = "https://github.com/terceiro/rmail/pull/13/commits/27f455af1fea0be0aa09959cc2237cbdf68de2a1.patch";
                  hash = "sha256-N5X9zix+WPoEugp2DBTu7dRDmesrF5pT/8Td2wraYoA=";
                })
              ];
            };

            # sup's gemspec has a native extension that tries to dynamically
            # `gem install xapian-ruby` at install time. xapian-ruby is
            # already provided as a sibling gem via bundlerApp, so replace
            # the extension with a no-op (same workaround nixpkgs used to
            # ship before the package was removed in 2019).
            sup = attrs: {
              dontBuild = false;
              nativeBuildInputs = [ pkgs.rake ];
              postPatch = ''
                cp ${./gems/mkrf_conf_xapian.rb} ext/mkrf_conf_xapian.rb
              '';
            };
          };

          meta = with pkgs.lib; {
            description = "A curses threads-with-tags style email client";
            homepage = "https://supmua.dev/";
            license = licenses.gpl2Only;
            mainProgram = "sup";
            platforms = platforms.unix;
          };
        };
      in
      {
        packages = {
          default = sup;
          sup = sup;
        };

        apps = {
          default = flake-utils.lib.mkApp {
            drv = sup;
            exePath = "/bin/sup";
          };
        };
      });
}
