output "endpoint" {
  value = aws_eks_cluster.Week22.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.Week22.certificate_authority[0].data
}
output "cluster_id" {
  value = aws_eks_cluster.Week22.id
}
output "cluster_endpoint" {
  value = aws_eks_cluster.Week22.endpoint
}
output "cluster_name" {
  value = aws_eks_cluster.Week22.name
}