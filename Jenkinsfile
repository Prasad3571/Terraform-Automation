# Create EFS Filesystem
resource "aws_efs_file_system" "jenkins_efs" {
  creation_token   = "jenkins-efs-token"
  performance_mode = "generalPurpose"
  throughput_mode  = "bursting"
  
  tags = {
    Name = "jenkins-efs"
  }
}

# Create EFS Mount Target
resource "aws_efs_mount_target" "jenkins_efs_mt" {
  file_system_id      = aws_efs_file_system.jenkins_efs.id
  subnet_id           = aws_subnet.main.id
  security_groups     = [aws_security_group.jenkins-sg-2022.id]
}

# Output EFS DNS name
output "efs_dns_name" {
  description = "The DNS name of the EFS file system"
  value       = aws_efs_file_system.jenkins_efs.dns_name
}
