docker pull mulesoft/flex-gateway:latest

# registration with **username & password**
docker run --entrypoint flexctl \
-v "$(pwd)/registration-1":/registration -u $UID mulesoft/flex-gateway \
registration create \
--username="appliedprops" \
--password="devops4Now$24" \
--environment=2c6f18bb-03e2-4874-a489-7216df5b5bc2 \
--connected=true \
--split=true \
--organization=a6ea8ce7-6d5f-41ee-a802-5505e8833854 \
--output-directory=/registration \
flex-gateway-1

# registration with **token**
docker run --entrypoint flexctl -u $UID \
  -v "$(pwd)/registration-2":/registration mulesoft/flex-gateway \
  registration create --organization=a6ea8ce7-6d5f-41ee-a802-5505e8833854 \
  --token=0c439582-9d02-4061-8f52-ecc2c5a281d1 \
  --output-directory=/registration \
  --connected=true \
  --split=true \
  flex-gateway-2

# Run
docker run --rm \
-v "$(pwd)/registory-6":/usr/local/share/mulesoft/flex-gateway/conf.d \
-p 8082:8082 \
mulesoft/flex-gateway

# renew
docker run --entrypoint flexctl \
-v "$(pwd)/nenew":/renew \
-v "$(pwd)/registory":/registration \
-u $UID mulesoft/flex-gateway \
registration renew \
--client-id=<your-client-id> \
--client-secret=<your-client-secret> \
--output-directory=/renew \
<path-to-registration-file-in-container>

docker exec -u $UID <container-name-or-id> flexctl registration inspect
