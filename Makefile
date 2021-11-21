update:
	ansible-playbook update.yml

main:
	ansible-playbook run.yml

compose: 
	ansible-playbook run.yml --tags=compose --limit=hassio
