build: up test down
up:
    vagrant up
test:
    vagrant snapshot restore clean || vagrant snapshot save clean
    vagrant ssh -- powershell C:/vagrant/test.ps1
down:
    vagrant destroy -f
