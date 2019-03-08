workflow "Deploy" {
  on = "push"
  resolves = ["ssh"]
}

action "ssh" {
  uses = "ssh"
  args = "cd /root/wiki-olinfo && git pull"
  secrets = ["PUBLIC_KEY", "HOST", "USER", "PRIVATE_KEY"]
}
