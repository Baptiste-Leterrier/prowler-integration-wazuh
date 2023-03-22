# prowler-integration-wazuh
Integrate Prowler JSON in Wazuh


- configure output
- configure JSON "sender"

Why do I need it ?

To send the JSON line by line in the destination file.
Wazuh can't parse a file in one go by default

- Add file in ossec.conf
- configure rule
- set everything in crontab
