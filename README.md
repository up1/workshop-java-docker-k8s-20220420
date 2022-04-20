## Working with Dockerfile


### Solution 1
```
$docker image build -t java-api:1.0 .
$docker container run -d -p 9999:8080 java-api:1.0
```