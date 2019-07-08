复制.env.example、ngrok-docker-compose/ngrok/data/authtoken.conf.example 去掉.example后缀。  
修改.env 填好自己的配置参数。  

运行后，执行 docker cp container_id:/ngrok/bin/ ./ngrok/data把客户端复制出来。  

配置authtoken.conf。

