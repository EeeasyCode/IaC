# IaC (Infrastructure as Code)

terraform

## Terraform Backend Example

### S3 bucket as backend

Terraform의 state를 저장하기 위해 S3를 사용합니다.

### DynamoDB Table for Lock

동시에 같은 파일을 수정하지 못하도록 하기 위해 DynamoDB에 작업에 대한 Lock을 생성합니다.
