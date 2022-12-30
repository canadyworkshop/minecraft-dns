# canadyworkshop/minecraft-dns

Minecraft Bedrock edition can only connect to "featured" external servers by default. It's capable of connecting to any bedrock server (as long as the verison matches) the but UI does not allow specifing a custom FQDN or IP address. To get around this, this image provides a DNS server that allows you to specify your own IP address for one or more of the "favorite" servers. Once the console is pointed to this DNS server, connecting to the "featured" server that has had the IP replaced will result in connecting to your server. 

## General Usage

To use the image, deploy it to a location that your console can connect to. This could be a local system or a cloud server.

When deploying do the following.

* Configure the local container port 8001 to forward to 53. ```-p 8001:53/tcp```
* Configure any environmental variables you need for IP addresses. ```--env CUBECRAFT='10.1.1.1'

Configure your console to use the system running this container for DNS.



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

