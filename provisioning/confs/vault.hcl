cluster_name = "example"
disable_mlock = true
ui = true
# one of: trace, debug, info, warning, error.
log_level = "trace"
storage "file" {
    path = "/home/vagrant/data"
}
listener "tcp" {
    address = "0.0.0.0:8200"
    tls_disable = false
    tls_cert_file = "/home/vagrant/cert.pem"
    tls_key_file = "/home/vagrant/key.pem"
}