update:
	ansible-playbook update.yml

main:
	ansible-playbook run.yml

ntp:
	ansible-playbook run.yml --tags=ntp
	
compose: 
	ansible-playbook run.yml --tags=compose --limit=hassio

compose-update: 
	ansible-playbook run.yml --tags=compose --limit=hassio -e compose_pull=True
