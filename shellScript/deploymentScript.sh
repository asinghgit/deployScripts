env=$1
module_name=$2

echo "Phase 1: Download package from nexus"

/usr/bin/mvn dependency:get -Dartifact=org.springframework:$module_name:0.0.1-SNAPSHOT -Ddest=/home/hackathon/download
echo "Phase 2: Deploy package at $env"
cp /home/hackathon/download/$module_name-0.0.1-SNAPSHOT.jar  /home/hackathon/env/$env
echo $?

