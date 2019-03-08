workflow "Deploy" {
  on = "push"
  resolves = ["ssh"]
}

action "ssh" {
  uses = "maddox/actions/ssh@master"
  args = "cd /root/wiki-olinfo && git pull"
  secrets = ["PUBLIC_KEY", "HOST", "USER", "PRIVATE_KEY"]
}
