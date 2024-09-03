# Ansible Terraform AWS Example

Ansible과 Terraform을 이용한 AWS IaC 예제

Infra Provisioning

- VPC
- Subnet
- IGW
- EC2 Instance

```
terraform-aws-provisioning/
│
├── main.tf # 최상위 Terraform 설정 파일 (모듈 호출 등)
├── variables.tf # 최상위 변수 정의 파일
├── outputs.tf # 최상위 출력 정의 파일
│
├── modules/
│ ├── network/ # 네트워크 모듈
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── outputs.tf
│ │
│ ├── security/ # 보안 모듈
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── outputs.tf
│ │
│ ├── routing/ # 라우팅 모듈
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── outputs.tf
│ │
│ └── ec2/ # EC2 인스턴스 모듈
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
│
└── terraform.tfvars # 변수 값 정의 파일 (옵션, 필요한 경우)
```
