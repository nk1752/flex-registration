# connected app1
client id = b95726291f564ae2942ac2c4ecc46311
client secret = 59dB6D7A84bd442bAfE7422233a82902
org id = a6ea8ce7-6d5f-41ee-a802-5505e8833854
env id = 2c6f18bb-03e2-4874-a489-7216df5b5bc2


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

# registration with **connected app**
docker run --entrypoint flexctl \
-v "$(pwd)/registration-8":/registration -u $UID mulesoft/flex-gateway \
registration create \
--client-id=b95726291f564ae2942ac2c4ecc46311 \
--client-secret=59dB6D7A84bd442bAfE7422233a82902 \
--environment=2c6f18bb-03e2-4874-a489-7216df5b5bc2 \
--connected=true \
--organization=a6ea8ce7-6d5f-41ee-a802-5505e8833854 \
--output-directory=/registration \
gateway-8

# Run
docker run --rm \
-v "$(pwd)/registory-8":/usr/local/share/mulesoft/flex-gateway/conf.d \
-p 8082:8082 \
mulesoft/flex-gateway

# renew
docker run --entrypoint flexctl \
-v "$(pwd)/nenew":/renew \
-v "$(pwd)/registration-8":/registration \
-u $UID mulesoft/flex-gateway \
registration renew \
--client-id=b95726291f564ae2942ac2c4ecc46311 \
--client-secret=59dB6D7A84bd442bAfE7422233a82902 \
--output-directory=/renew \
/usr/local/share/mulesoft/flex-gateway/conf.d

docker exec -u $UID <container-name-or-id> flexctl registration inspect
