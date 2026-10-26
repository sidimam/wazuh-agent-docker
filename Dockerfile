ARG WAZUH_VERSION=4.14.9
FROM wazuh/wazuh-agent:${WAZUH_VERSION}
# Il modulo python "docker" serve al wodle docker-listener per leggere gli eventi
# del daemon tramite /var/run/docker.sock. L'immagine ufficiale (Amazon Linux 2023)
# non ha pip, quindi lo installiamo via ensurepip.
RUN python3 -m ensurepip --upgrade && python3 -m pip install --no-cache-dir docker
