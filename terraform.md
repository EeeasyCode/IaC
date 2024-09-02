# Terraform

## Terraform 작동 원리

1. Local 코드 : 실제 개발자가 작성/수정하고 있는 코드
2. AWS 실제 인프라 : 실제 AWS에 배포되어 있는 인프라
3. Backend에 저장된 상태 : 가장 최근에 배포한 테라폼 코드 형상

가장 중요한 것 -> AWS 실제 인프라와 Backend에 저장된 상태가 100% 일치하도록 만드는 것

내가 생각한 리소스 그대로 코드로 만들고 이것이 실제 리소스와 일치하도록 되는 것

실제 조직과의 모습이 AWS IAM 유저/그룹과 일치해야 함

### 실행 순서

1. 초기화

```tf
terraform init
```

프로바이더 플러그인을 설치함

- 최초로 프로바이더를 설치할 경우
- 프로바이더 버전을 업데이트할 경우

2. 포맷팅

```tf
terraform fmt
```

테라폼 코드의 포맷을 자동 정렬함

- 새로운 파일 작성 시
- 기존 파일 변경 시

3. 유효성 검증

```tf
terraform validate
```

작성한 코드가 문법상으로 이상이 없는지 검사

4. 계획

```tf
terraform plan
```

apply 하기 전 내가 명시한 인프라가 제대로 구성되었는지 확인하기 위함

5. 적용

```tf
terraform apply
```

리소스 구성을 정의한 코드를 적용하여 실제 리소스를 생성함

6. 제거

```tf
terraform destroy
```

---

## Terraform Backend Example

### S3 bucket as backend

Terraform의 state를 저장하기 위해 S3를 사용합니다.

### DynamoDB Table for Lock

동시에 같은 파일을 수정하지 못하도록 하기 위해 DynamoDB에 작업에 대한 Lock을 생성합니다.

---

## Terraform Variable Example

### 변수 정의

보통 variables.tf 파일을 생성하여 해당 파일에 변수를 정의함

일반적으로 terraform.tfvars 파일을 생성하여 정의한 변수에 값을 주입함

Variable = value 형태로 정의함

---
