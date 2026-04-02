{ lib, fetchFromGitHub }:
rec {
  version = "custom";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "ssandrooo";
    repo = "openrazer";
    rev = "68ae4ded553b11891b0771706ec2be614fb19e67";
    hash = "sha256-mOSMhkDpyQA+rz5kWGnfREtOPfnSNzWFHuIudjBix8U=";
  };

  meta = {
    homepage = "https://openrazer.github.io/";
    license = lib.licenses.gpl2Only;
    maintainers = with lib.maintainers; [ evanjs ];
    platforms = lib.platforms.linux;
  };
}
