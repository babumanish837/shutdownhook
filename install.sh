set -evx

URLBASE=$1

mkdir -p data

#touch /data/onstartoutput.txt
touch /data/onstopoutput.txt

curl ${URLBASE}/onstartstop.service > /etc/systemd/system/onstartstop.service
#curl ${URLBASE}/onstart.sh > /data/onstart.sh
curl ${URLBASE}/onstop.sh > /data/onstop.sh

chmod 755 /etc/systemd/system/onstartstop.service
#chmod 755 /data/onstart.sh
chmod 755 /data/onstop.sh

systemctl enable onstartstop --now