# wazuh-agent-docker

Immagine Wazuh agent per **Unraid** (casa Manieri‑Di Mambro), identica a
`wazuh/wazuh-agent` con in più il modulo Python `docker`, richiesto dal wodle
`docker-listener` per leggere gli eventi del daemon via `/var/run/docker.sock`.

L'immagine ufficiale è su Amazon Linux 2023 senza `pip`; qui lo aggiungiamo con
`ensurepip`. Prima questa immagine era costruita a mano sul NAS (stato Unraid
"version: not available", perché locale): ora è su GHCR e Unraid la traccia.

Pubblicata su: `ghcr.io/sidimam/wazuh-agent-docker` (tag = versione Wazuh + `latest`).

## Aggiornare a una nuova versione di Wazuh
1. aggiorna `VERSION` (es. `4.15.0`) e, se serve, l'`ARG WAZUH_VERSION` nel `Dockerfile`;
2. `git push`: GitHub Actions ricostruisce e pubblica il nuovo tag;
3. su Unraid cambia il tag del container e aggiorna.
