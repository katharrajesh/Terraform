### Create EBS Volumes in Multiple Availability Zones

resource "aws_ebs_volume" "my_ebs_volume" {
  count             = var.az-count
  availability_zone = var.availability_zones[count.index]  # Use the availability zone specified in your variable
  size              = var.ebs-size
  
  tags = {
    Name = "my_ebs_volume_${count.index + 1}"
  }
}

### Attach EBS Volumes to EC2 Instances

resource "aws_volume_attachment" "ebs_attachment" {
  count       = var.instance-count  # Adjust count to match the number of instances
  device_name = "/dev/sdh"  # Adjust the device name as needed

  volume_id   = aws_ebs_volume.my_ebs_volume[count.index].id
  instance_id = aws_instance.Test-EC2[count.index].id
}
