# Ansible

시스템 구성, 반복적인 작업 등을 쉽게 코드로 관리할 수 있는 오픈소스 자동화 도구

파이썬과 yaml로 구성하기에 특정 기기의 종속이 발생하지 않음

## 장점

- Agentless
- 읽기 쉬운 코드
- Idempotence (멱등성)
- Playbooks and Tasks
- Iac

## 동작

Management Node와 Managed Node는 SSH를 통해 통신함

### Ansible Management Node

실제 Ansible을 설치하여 각 group node들을 관리하는 Node

- playbook
  : YAML 문법으로 쓰여진 파일로 각각의 play는 호스트들이 실제적으로 어떤 task를 수행하게 될 것인지 정의되어 있음

- Inventory
  : Managed node들을 그룹으로 모아둔 것으로, IP Address 등 host를 구분할 수 있는 정보들을 이용하여 그룹들이 지정되고 저장됨

### Managed Node

Management Node에 의해 관리되는 Group들의 Node

## 초기 설정

host 환경에서의 ansible 설치

```zsh
# Install virtualenv: a tool for creating isolated Python environments.
python3 -m pip install virtualenv

# Create a virtual environment named 'venv'.
python3 -m virtualenv venv

# Activate the virtual environment: use Python and libraries from 'venv'.
source venv/bin/activate

# Install Ansible within the virtual environment.
pip install ansible
```

### Inventory File

- default : /etc/ansible/hosts
- -i or --inventory: e.g ansible-playbook get_logs.yml -i staging -i production
- Dynamic Inventory: it means the inventory can be generated on-th-fly using external scripts or tool

  - `pip3 install boto3`

### Ansible Config File

```zsh
ansible-config init --disabled > ansible.cfg
```
