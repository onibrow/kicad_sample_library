# PiE Sample KiCad Library

 sample kicad custom library setup to demonstrate PCM capabilities. The "release.sh" script is written for bash-like environments and requires `zip`, `sed`, and `jq` to function. The structure of the release cycle is designed to make the barrier to KiCad library maintenance as low as possible by only fulfilling the minimum required `metadata.json` fields. In the spirit of simplicity, we forego the use of a meta-github repository to handle auto versioning, packaging, and deployment.
