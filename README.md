## Working with Dockerfile


### Solution 1 :: Copy JAR file to Docker
```
$docker image build -t java-api:1.0 .  --progress plain
$docker container run -d -p 9999:8080 java-api:1.0
```

### Solution 2 :: Multi-stage build
```
$docker image build -t java-api:2.0 -f Dockerfile_02  .  --progress plain
$docker container run -d -p 9999:8080 java-api:2.0
```

### Solution 3 :: Multi-stage build + Improvement with cached system
```
$docker image build -t java-api:3.0 -f Dockerfile_03  .  --progress plain
$docker container run -d -p 9999:8080 java-api:3.0
```

### Solution 4 :: Working with Layered Jars
```
$docker image build -t java-api:4.0 -f Dockerfile_04  .  --progress plain
$docker container run -d -p 9999:8080 java-api:4.0
```

### Solution 5 :: Working with Buildpacks
```
$./mvnw spring-boot:build-image
```


## Working with Docker compose
```
# Create JAR file without testing
$./mvnw clean package -DskipTests=true

# Start DB
$docker-compose -f docker-compose-db-api.yml up -d db
$docker-compose -f docker-compose-db-api.yml ps
$docker-compose -f docker-compose-db-api.yml logs --follow

# Start API
$docker-compose -f docker-compose-db-api.yml up -d api
$docker-compose -f docker-compose-db-api.yml ps
$docker-compose -f docker-compose-db-api.yml logs --follow
```


