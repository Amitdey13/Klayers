# Container Build Images

## Python 3.9 - x86 (only)
resource "aws_ecr_repository" "p39build_x86" {
  name                 = "p39build"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ssm_parameter" "p39_build_repo" {
  type        = "String"
  description = "URL for p39 x86 repo"
  name        = "/${var.app_name}/${local.workspace_full_name}/build/p39/x86/repo"
  value       = aws_ecr_repository.p39build_x86.repository_url
  overwrite   = true
}

## Python 3.10 - x86
resource "aws_ecr_repository" "p310build_x86" {
  name                 = "p310build"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ssm_parameter" "p310_build_repo" {
  type        = "String"
  description = "URL for p310 x86 repo"
  name        = "/${var.app_name}/${local.workspace_full_name}/build/p310/x86/repo"
  value       = aws_ecr_repository.p310build_x86.repository_url
  overwrite   = true
}

## Python 3.10 - arm64
resource "aws_ecr_repository" "p310build_arm64" {
  name                 = "p310armbuild"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ssm_parameter" "p310_arm64_build_repo" {
  type        = "String"
  description = "URL for p310 arm64 repo"
  name        = "/${var.app_name}/${local.workspace_full_name}/build/p310/arm64/repo"
  value       = aws_ecr_repository.p310build_arm64.repository_url
  overwrite   = true
}

## Python 3.11 - x86
resource "aws_ecr_repository" "p311build" {
  name                 = "p311build"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ssm_parameter" "p311_build_repo" {
  type        = "String"
  description = "URL for p311 arm64 repo"
  name        = "/${var.app_name}/${local.workspace_full_name}/build/p311/x86/repo"
  value       = aws_ecr_repository.p311build.repository_url
  overwrite   = true
}

## Python 3.11 - arm64
resource "aws_ecr_repository" "p311build_arm64" {
  name                 = "p311armbuild"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ssm_parameter" "p311_arm64_build_repo" {
  type        = "String"
  description = "URL for p311 arm64 repo"
  name        = "/${var.app_name}/${local.workspace_full_name}/build/p311/arm64/repo"
  value       = aws_ecr_repository.p311build_arm64.repository_url
  overwrite   = true
}

