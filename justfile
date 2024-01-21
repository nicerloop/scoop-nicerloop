build:
    -vagrant destroy -f
    vagrant up
    vagrant ssh -- C:\\vagrant\\test.cmd
    vagrant destroy -f
