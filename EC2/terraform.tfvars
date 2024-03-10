ami_id             = "ami-03f4878755434977f"
availability_zones = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
my-provider        = "ap-south-1"
instance-type      = "t3a.medium"
instance-count     = 3
allowed_ports      = [22, 80, 443]
ebs-size           = 20
az-count = 3