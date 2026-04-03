{ lib, fetchFromGitHub }:
rec {
  version = "custom";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "ssandrooo";
    repo = "openrazer";
    rev = "d967b347cac759f7ebb192e0f7b19a762fb810db";
    hash = "sha256-yivbMveYtJ3yVYG9yy8KzcCs7enJuuFMmGQ3tdcpAR0=";
  };

  meta = {
    homepage = "https://openrazer.github.io/";
    license = lib.licenses.gpl2Only;
    maintainers = with lib.maintainers; [ evanjs ];
    platforms = lib.platforms.linux;
  };
}
