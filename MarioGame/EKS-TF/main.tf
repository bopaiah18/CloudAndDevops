module "vpc" {
  source = "./modules/vpc"
}

module "iam" {
  source = "./modules/iam"
}

module "eks" {
  source      = "./modules/eks"
  vpc_id      = module.vpc.vpc_id
  subnet_ids  = module.vpc.public_subnet_ids
  cluster_iam_role_arn = module.iam.cluster_iam_role_arn
  node_iam_role_arn    = module.iam.node_iam_role_arn
}

