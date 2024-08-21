# IaC (Infrastructure as Code)

## Terraform 작동 원리

1. Local 코드 : 실제 개발자가 작성/수정하고 있는 코드
2. AWS 실제 인프라 : 실제 AWS에 배포되어 있는 인프라
3. Backend에 저장된 상태 : 가장 최근에 배포한 테라폼 코드 형상

가장 중요한 것 -> AWS 실제 인프라와 Backend에 저장된 상태가 100% 일치하도록 만드는 것
