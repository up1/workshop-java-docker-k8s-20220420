## Working with Dockerfile


### Solution
```
$docker image build -t java-api:1.0 .  --progress plain
$docker container run -d -p 9999:8080 java-api:1.0
```