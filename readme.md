# SHADOWSOCKS                     
shadowsocks server version 2.8.2
                                
## How to use this image           
Start shadowsocks server        
`$ docker run -d --name shadowsocks -p 8388:8388 infox/shadowsocks:v2.8.2`
                                
## Environment Variables           
When you start the shadowsocks image, you can adjust the configuration of the
Shadowsocks server by passing one or more environment variables on the docker
run command line.
#### SSPORT                          
This variable is SERVER PORT. By default, value is '8388'
#### SSPASS                          
This variable is SERVER PASSWORD. By default, value is 'myshadow'
#### SSMETHOD                        
This variable is encryption method. By default, value is 'aes-256-cfb'
#### SSTIMEOUT                       
This variable is timeout in seconds. By default, value is '300'
##### example                         
`$ docker run -d --name=shadowsocks -e SSPROT=10000 -e SSPASS=EXAMPLE_PASS -e
SSMETHOD=aes-128-cfb -e SSTIMEOUT=600 -p 10000:10000 infox/shadowsocks:v2.8.2`
                                
Thinkyou 
