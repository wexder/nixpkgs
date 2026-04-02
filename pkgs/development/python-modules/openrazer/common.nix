{ lib, fetchFromGitHub }:
rec {
  version = "custom";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "ssandrooo";
    repo = "openrazer";
    rev = "2026d48e60f21f381f0be9d41eca363430bfd7b6";
    hash = "sha256-FCJ6InCtnZtPCO2aB9uOh6rdLtzO5xjK259BVWNLT5g=";
  };

  meta = {
    homepage = "https://openrazer.github.io/";
    license = lib.licenses.gpl2Only;
    maintainers = with lib.maintainers; [ evanjs ];
    platforms = lib.platforms.linux;
  };
}
