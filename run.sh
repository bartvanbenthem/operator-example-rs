KUBECONFIG=~/.kube/config

kubectl create -f config/crd/cdbootstraps.cndev.nl.yaml

cargo fmt

# test
./tests/vault.sh

cargo run

# kubectl apply -f config/samples/cdbootstrap-example.yaml && ./inject_secrets.sh
# kubectl scale deploy test-bootstrap --replicas=0 && kubectl scale deploy test-bootstrap --replicas=2

# kubectl apply -f config/samples/update.yaml