# 1. helm install nfs
helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
                                       --set nfs.server=192.168.0.10 \
                                       --set nfs.path=/volume2/k3s \
                                       --namespace kube-system

# 2. set default
storageclass.kubernetes.io/is-default-class: "true"
