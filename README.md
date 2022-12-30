# canadyworkshop/minecraft

## Configuration

By default the container will not provide DNS record replacement for any of the default "featured" mincecraft servers. You may optionally specifiy which server and IP to use by setting the apporpriate enviornmental variable.

### Configuration Options

|Server|Env|Notes|
|-------|----|-----|
|All|ALL_SERVERS|Sets all the servers to the IP provided. Setting this will ignore all server specific environmental variables.
Galaxite|GALAXITE|Sets the DNS for Galaxite to the IP this env is set to.
Pixel Paradise|PIXEL_PARADISE|Sets the DNS for Pixel Paradise to the IP this env is set to.
Lifeboat|LIEFBOAT|Sets the DNS for Mineplex to the IP this env is set to.
Cube Craft|CUBECRAFT|Sets the DNS for CubeCraft to the IP this env is set to.
The Hive|THE_HIVE|Sets the DNS for TheHive to the IP this env is set to.
Mineville|MINEVILLE|Sets the DNS for Mineville to the IP this env is set to.

