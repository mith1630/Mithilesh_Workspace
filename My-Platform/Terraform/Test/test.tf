resource "null_resource" "Testing" {
  provisioner "local-exec" {
    command = "echo 'backup_bucket_name=my_bucket' > test.sh"
  }
}

resource "null_resource" "Testing1" {
  provisioner "local-exec" {
    command = "backup_bucket_name=`cat test.sh | awk -F'=' '{print $2}'`; echo $backup_bucket_name"
  }
  depends_on = [null_resource.Testing]
}

