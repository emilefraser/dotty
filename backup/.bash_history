  "metadata": {

    "name": "production",

    "labels": {

      "name": "production"

    }

  }

}
" > namespace.json
echo "kubectl namespace create -f https://k8s.io/examples/admin/namespace-dev.json" > namespace-create-fromfile.sh
echo "kubectl create -f https://k8s.io/examples/admin/namespace-dev.json" > namespace-create-fromfile.sh
..
cd context
echo "kubectl config view" > context-get.sh
..
mkdir volume
nkdir claims
mkdir claims
mkdir deploymenta
mkdir storageclasses
cd repos
cd kube
ls
cd scripts
..
mkcd types
mkdir {podtemplates,pods,serviceaccounts,jobs,namespaces,clusters,nodes,ingress,secrets,persistedvolumes,storageclasses,deployments,statefulsets,events,networkpolicies,resourcesquotes,replicasets,endpoints,limitranges,thirdpartyreaources,services}
mkdir {componentstatusses,configmaps,replicationcontrollers}
mkdir daemonsets
mkdir horizontalpodautoscallers
mkdir podaecuritypoliciea
mv podaecuritypoliciea podsecuritypolicies/
helm repo lisy
helm repo list
helm list
helm list --all-namespaces
helm env
helm plugin list
cd 
cd .config
ls
cd helm
ls
cat repositories.yaml
cd
cd .kube
ls
helm --kube-config=/home/pyromaniac/.kube/config
helm --kubeconfig=/home/pyromaniac/.kube/config
helm env
helm env --help
helm env --kube-config=/home/pyromaniac/.kube/config
helm env --kubeconfig=/home/pyromaniac/.kube/config
kubectl context
kubectl
kubectl context
kubectl get context
kubectl config view
helm
helm plugin
helm plugin list
cd
cd repos
cd kube
ls
cd setup
ls
echo "helm plugin install https://github.com/sapcc/helm-charts-plugin --version=master" > helm-plugin
echo "helm plugin install https://github.com/sapcc/helm-charts-plugin --version=master" > helm-plugin.sh
helm plugin install https://github.com/sapcc/helm-charts-plugin --version=master
mkdir helm
cd helm
aria2c 
aria2c https://github.com/blendle/kubecrt/releases/download/v0.9.2/kubecrt_v0.9.2_linux_amd64
helm helm plugin install https://github.com/burdiyan/helm-update-config
helm plugin install https://github.com/burdiyan/helm-update-config
helm plugin install https://github.com/kuuji/helm-external-val
helm repo list
helm repo remove rancher-latest
helm repo add https://releases.rancher.com/server-charts/latest
helm repo add rancher-latest https://releases.rancher.com/server-charts/latest
helm repo remove rancher-stable
helm repo add rancher-stable https://releases.rancher.com/server-charts/stable
kubectl get namespaces
kubestl
kubescl
kubectl get services
docker ps
helm install rancher rancher-latest/rancher   --namespace cattle-system   --set hostname=rancher.my.org   --set replicas=3   --set ingress.tls.source=secret
helm install rancher rancher-latest/rancher   --namespace cattle-system   --set hostname=delaporte.manakin-velociraptor.ts.net   --set replicas=3   --set ingress.tls.source=secret
helm install rancher rancher-stable/rancher   --namespace cattle-system   --set hostname=delaporte.manakin-velociraptor.ts.net   --set replicas=3   --set ingress.tls.source=secret
echo https://delaporte.manakin-velociraptor.ts.net/dashboard/?setup=$(kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}')
kubectl -n cattle-system rollout status deploy/rancher
kubectl -n cattle-system get deploy rancher
kubectl -n cattle-system get deploy rancher --help
kubectl -n cattle-system get deploy rancher
kubectl get nodes
rancher
rancher settings
rancher login
rancher login https:///delaporte.manakin-velociraptor.ts.net
kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}{{ "\n" }}'
rancher login https:///delaporte.manakin-velociraptor.ts.net
rancher login https:///delaporte.manakin-velociraptor.ts.net --skip-verify
kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}{{ "\n" }}'
helm uninstall rancher
helm uninstall rancher -n cattle-system
helm install rancher rancher-stable/rancher   --namespace cattle-system   --set hostname=delaporte.manakin-velociraptor.ts.net:7777   --set replicas=3   --set ingress.tls.source=secret
kubectl apply --validate=false -f https://github.com/cert-manager/cert-manager/releases/download/v1.0.4/cert-manager.crds.yaml
kubectl create namespace cert-manager
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm install   cert-manager jetstack/cert-manager   --namespace cert-manager   --version v1.0.4
kubectl get pods --namespace cert-manager
kubectl get pods --namespace cert-manager --help
kubectl get pods --namespace cert-manager --show-progress
kubectl get pods --namespace cert-manager --hrlp
kubectl get pods --namespace cert-manager --help
kubectl get pods --namespace cert-manager --show-progress
kubectl get pods --namespace cert-manager --help
kubectl get pods --namespace cert-manager
helm install rancher rancher-latest/rancher   --namespace cattle-system   --set hostname=delaporte.manakin-velociraptor.ts.net
helm install rancher rancher-stable/rancher   --namespace cattle-system   --set hostname=delaporte.manakin-velociraptor.ts.net
helm upgrafe -_install rancher rancher-stable/rancher   --namespace cattle-system   --set hostname=delaporte.manakin-velociraptor.ts.net
helm upgrade -_install rancher rancher-stable/rancher   --namespace cattle-system   --set hostname=delaporte.manakin-velociraptor.ts.net
helm upgrade --install rancher rancher-stable/rancher   --namespace cattle-system   --set hostname=delaporte.manakin-velociraptor.ts.ne
helm uninstall rancher
helm uninstall rancher --namespace cattle-system
helm install rancher rancher-latest/rancher   --namespace cattle-system   --set hostname=delaporte.manakin-velociraptor.ts.net
helm install rancher rancher-stable/rancher   --namespace cattle-system   --set hostname=delaporte.manakin-velociraptor.ts.net
kubectl get pods --namespace cert-manager
helm uninstall rancher --namespace cattle-system
helm uninstall --namespace cert-manager cert-manager
helm list --all-namespaces
kubectl get pods --namespace cert-manager
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.5.1/cert-manager.crds.yaml
helm repo add jetstack https://charts.jetstack.io
helm install cert-manager jetstack/cert-manager   --namespace cert-manager   --create-namespace   --version v1.5.1
helm install cert-manager jetstack/cert-manager   --namespace cert-manager   --create-namespace   --version v1.5.1
helm uninstall --namespace cert-manager cert-manager
helm install cert-manager jetstack/cert-manager   --namespace cert-manager   --create-namespace   --version v1.5.1
kubectl get pods --namespace cert-manager
helm install rancher rancher-latest/rancher   --namespace cattle-system   --set hostname=rancher.my.org   --set replicas=3
helm install rancher rancher-stable/rancher   --namespace cattle-system   --set hostname=rancher.my.org   --set replicas=3
helm uninstall rancher rancher-latest/rancher   --namespace cattle-system
helm uninstall rancher rancher-stable/rancher   --namespace cattle-system
helm install rancher rancher-stable/rancher   --namespace cattle-system   --set hostname=delaporte.manakin-velociraptor.ts.net  --set replicas=3
kubectl -n cattle-system rollout status deploy/rancher
kubectl -n cattle-system get deploy rancher
helm plugin install https://github.com/sapcc/helm-charts-plugin --version=master
docker -H tcp://0.0.0.0:2376
docker -H tcp://0.0.0.0:2376 ps
docker -H tcp://0.0.0.0:2375 ps
docker -H tcp://0.0.0.0:2375 ls
docker -H tcp://0.0.0.0:2375 ps
docker -H tcp://127.0.0.1:2375 ps
docker -H tcp://127.0.0.1:2376 ps
cd repos
mkdir databricks
cd databricks/
gitclone https://github.com/databricks-academy/data-engineering-with-databricks
gitclone https://github.com/databricks-academy/apache-spark-programming-with-databricks
gitclone https://github.com/databricks-academy/dbacademy-toolbox
git clone https://github.com/databricks-academy/data-analysis-with-databricks-sql
gitclone https://github.com/databricks-academy/apache-spark-programming-with-databricks
git clone https://github.com/databricks-academy/advanced-data-engineering-with-databricks
gitclone https://github.com/databricks-academy/advanced-data-engineering-with-databricks
kubectl
kubectl get all
kubectl get --help
kubectl get pods
systemctl status iscsid
apt-get install nfs-common
sudo apt-get install nfs-common
sudo apt autoremive
sudo apt autoremove
kubectl version
kubectl version --short
jq
aptsearch 
aptsearch iscsiadm
cd /var
cd lib
ls
cd docker
ls
sudo restart
restart
shutdown
sudo shutdown
postman
whereis postman
whereis rancher
reload
whereis postman
kubernetic
helm list --all-namespaces
kubectl get namespace
sudo kuberneticc
sudo kubernetic
octant
rancher
rancher server
rancher server ls
cd ~/.rd/config
c ~/.rd/config
ls ~/.rd
ls ~/.kube
c ~/.kube/config
rancher --version
cd 
cd repos
cd kube
ls
cd setup
cd rancer
ls
echo "helm repo add rancher-latest https://releases.rancher.com/server-charts/latest
" > add-rancher-helm.sh
whereis rancher
kubectl create namespace cattle-system
cd /
cd shell
cd 
cd shell
ls
cd dotty
ls
cd _examples
ls
cd dotfiles/
git clone https://github.com/ElectricRCAircraftGuy/eRCaGuy_dotfiles
cd 
cd ..
cd 
cd repos
cd kube
ls
cd docs
gitclone https://github.com/rootsongjc/kubernetes-handbook
kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}{{"\n"}}' 
echo https://delaporte.manakin-velociraptor.ts.net/dashboard/?setup=$(kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}')
kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}{{ "\n" }}'
kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{ .data.bootstrapPassword|base64decode}}{{ "\n" }}'
kubectl -n cattle-system get secret/bootstrap-secret -w -o json | jq
docker ps
helm upgrade         --install         --create-namespace         --version 2.6.1         --namespace cattle-system         --set hostname=rancher.local         rancher         rancher-latest/rancher
helm upgrade         --install         --create-namespace              --namespace cattle-system         --set hostname=delaporte.manakin-velociraptor.ts.net   --set bootstrapPassword=Changeme123!       rancher         rancher-stabe/rancher
helm upgrade         --install         --create-namespace              --namespace cattle-system         --set hostname=delaporte.manakin-velociraptor.ts.net   --set bootstrapPassword=Changeme123!       rancher         rancher-stable/rancher
kubectl -n cattle-system rollout status deploy/rancher
kubectl -n cattle-system get deploy rancher
echo https://delaporte.manakin-velociraptor.ts.net/dashboard/?setup=$(kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}')
kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}{{ "\n" }}'
kubectl -n cattle-system get deploy rancher
kubectl -n cattle-system exec $(kubectl -n cattle-system get pods -l app=rancher | grep '1/1' | head -1 | awk '{ print $1 }') -- reset-password
cd ..
cd setup[
cd rancher
ls
echo "kubectl -n cattle-system exec $(kubectl -n cattle-system get pods -l app=rancher | grep '1/1' | head -1 | awk '{ print $1 }') -- reset-password" > rancher-reset-bootstrap-pw.sh
cd ..
ls
cd ..
ls
mkcd .config
mkcd rancher
nano rancher-key.sh
aptinstall open-iscsi
sudo apt-get update;sudo apt-get install -y open-iscsi
aptinstall iscsid
aptinstall iscsiadm
findmnt
blkid
....
cd kube
cd setup
cd rancher
echo "curl -sSfL https://raw.githubusercontent.com/longhorn/longhorn/v1.3.0/scripts/environment_check.sh | bash" > longhorn.sh
curl -sSfL https://raw.githubusercontent.com/longhorn/longhorn/v1.3.0/scripts/environment_check.sh | bash
curl -sSfL https://raw.githubusercontent.com/longhorn/longhorn/v1.3.0/scripts/environment_check.sh
curl -sSfL https://raw.githubusercontent.com/longhorn/longhorn/v1.3.0/scripts/environment_check.sh > environment_check.sh
exe environment_check.sh 
./environment_check.sh 
#!/bin/bash
export RED='\x1b[0;31m'
export GREEN='\x1b[38;5;22m'
export CYAN='\x1b[36m'
export YELLOW='\x1b[33m'
export NO_COLOR='\x1b[0m'
if [ -z "${LOG_TITLE}" ]; then
  LOG_TITLE=''
fi
if [ -z "${LOG_LEVEL}" ]; then
  LOG_LEVEL="INFO"
fi
debug() {
  if [[ "${LOG_LEVEL}" == "DEBUG" ]]; then
    local log_title
    if [ -n "${LOG_TITLE}" ]; then
     log_title="(${LOG_TITLE})"
    else
     log_title=''
    fi
    echo -e "${GREEN}[DEBUG]${log_title} ${NO_COLOR}$1"
  fi
}
info() {
  if [[ "${LOG_LEVEL}" == "DEBUG" ]] ||     [[ "${LOG_LEVEL}" == "INFO" ]]; then
    local log_title
    if [ -n "${LOG_TITLE}" ]; then
     log_title="(${LOG_TITLE})"
    else
     log_title=''
    fi
    echo -e "${CYAN}[INFO] ${log_title} ${NO_COLOR}$1"
  fi
}
warn() {
  if [[ "${LOG_LEVEL}" == "DEBUG" ]] ||     [[ "${LOG_LEVEL}" == "INFO" ]] ||     [[ "${LOG_LEVEL}" == "WARN" ]]; then
    local log_title
    if [ -n "${LOG_TITLE}" ]; then
     log_title="(${LOG_TITLE})"
    else
     log_title=''
    fi
    echo -e "${YELLOW}[WARN] ${log_title} ${NO_COLOR}$1"
  fi
}
error() {
  if [[ "${LOG_LEVEL}" == "DEBUG" ]] ||     [[ "${LOG_LEVEL}" == "INFO" ]] ||     [[ "${LOG_LEVEL}" == "WARN" ]] ||     [[ "${LOG_LEVEL}" == "ERROR" ]]; then
    local log_title
    if [ -n "${LOG_TITLE}" ]; then
     log_title="(${LOG_TITLE})"
    else
     log_title=''
    fi
    echo -e "${RED}[ERROR]${log_title} ${NO_COLOR}$1"
  fi
}
detect_node_os()
{
  local pod="$1"
  OS=`kubectl exec -it $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c 'grep -E "^ID_LIKE=" /etc/os-release | cut -d= -f2'`
  if [[ -z "${OS}" ]]; then
    OS=`kubectl exec -it $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c 'grep -E "^ID=" /etc/os-release | cut -d= -f2'`
  fi
  echo "$OS"
}
set_packages_and_check_cmd()
{
  case $OS in
  *"debian"* | *"ubuntu"* )
    CHECK_CMD='dpkg -l | grep -w'
    PACKAGES=(nfs-common open-iscsi)
    ;;
  *"centos"* | *"fedora"* | *"rocky"* | *"ol"* )
    CHECK_CMD='rpm -q'
    PACKAGES=(nfs-utils iscsi-initiator-utils)
    ;;
  *"suse"* )
    CHECK_CMD='rpm -q'
    PACKAGES=(nfs-client open-iscsi)
    ;;
  *"arch"* )
    CHECK_CMD='pacman -Q'
    PACKAGES=(nfs-utils open-iscsi)
    ;;
  *)
    CHECK_CMD=''
    PACKAGES=()
    warn "Stop the environment check because '$OS' is not supported in the environment check script."
    exit 1
    ;;
   esac
}
check_dependencies() {
  local targets=($@)
  local allFound=true
  for ((i=0; i<${#targets[@]}; i++)); do
    local target=${targets[$i]}
    if [ "$(which $target)" == "" ]; then
      allFound=false
      error "Not found: $target"
    fi
  done
  if [ "$allFound" == "false" ]; then
    error "Please install missing dependencies."
    exit 2
  else
    info "Required dependencies are installed."
  fi
}
create_ds() {
cat <<EOF > $TEMP_DIR/environment_check.yamlapiVersion: apps/v1
kind: DaemonSet
metadata:
  labels:
    app: longhorn-environment-check
  name: longhorn-environment-check
spec:
  selector:
    matchLabels:
      app: longhorn-environment-check
  template:
    metadata:
      labels:
        app: longhorn-environment-check
    spec:
      hostPID: true
      containers:
      - name: longhorn-environment-check
        image: alpine:3.12
        args: ["/bin/sh", "-c", "sleep 1000000000"]
        volumeMounts:
        - name: mountpoint

c environment_check.sh 
create_ds() {
cat <<EOF > $TEMP_DIR/environment_check.yamlapiVersion: apps/v1
kind: DaemonSet
metadata:
  labels:
    app: longhorn-environment-check
  name: longhorn-environment-check
spec:
  selector:
    matchLabels:
      app: longhorn-environment-check
  template:
    metadata:
      labels:
        app: longhorn-environment-check
    spec:
      hostPID: true
      containers:
      - name: longhorn-environment-check
        image: alpine:3.12
        args: ["/bin/sh", "-c", "sleep 1000000000"]
        volumeMounts:
        - name: mountpoint
          mountPath: /tmp/longhorn-environment-check
          mountPropagation: Bidirectional
        securityContext:
          privileged: true
      volumes:
      - name: mountpoint
        hostPath:
            path: /tmp/longhorn-environment-check
EOF

  kubectl create -f $TEMP_DIR/environment_check.yaml > /dev/null
}
cleanup() {
  info "Cleaning up longhorn-environment-check pods..."
  kubectl delete -f $TEMP_DIR/environment_check.yaml > /dev/null
  rm -rf $TEMP_DIR
  info "Cleanup completed."
}
wait_ds_ready() {
  while true; do
    local ds=$(kubectl get ds/longhorn-environment-check -o json)
    local numberReady=$(echo $ds | jq .status.numberReady)
    local desiredNumberScheduled=$(echo $ds | jq .status.desiredNumberScheduled)
    if [ "$desiredNumberScheduled" == "$numberReady" ] && [ "$desiredNumberScheduled" != "0" ]; then
      info "All longhorn-environment-check pods are ready ($numberReady/$desiredNumberScheduled)."
      return
    fi
    info "Waiting for longhorn-environment-check pods to become ready ($numberReady/$desiredNumberScheduled)..."
    sleep 3
  done
}
check_mount_propagation() {
  local allSupported=true
  local pods=$(kubectl -l app=longhorn-environment-check get po -o json)
  local ds=$(kubectl get ds/longhorn-environment-check -o json)
  local desiredNumberScheduled=$(echo $ds | jq .status.desiredNumberScheduled)
  for ((i=0; i<desiredNumberScheduled; i++)); do
    local pod=$(echo $pods | jq .items[$i])
    local nodeName=$(echo $pod | jq -r .spec.nodeName)
    local mountPropagation=$(echo $pod | jq -r '.spec.containers[0].volumeMounts[] | select(.name=="mountpoint") | .mountPropagation')
    if [ "$mountPropagation" != "Bidirectional" ]; then
      allSupported=false
      error "node $nodeName: MountPropagation is disabled"
    fi
  done
  if [ "$allSupported" != "true" ]; then
    error "MountPropagation is disabled on at least one node. As a result, CSI driver and Base image cannot be supported."
    exit 1
  else
    info "MountPropagation is enabled."
  fi
}
check_package_installed() {
  local pods=$(kubectl get pods -o name | grep longhorn-environment-check)
  local allFound=true
  for pod in ${pods}; do
    OS=`detect_node_os $pod`
    if [ x"$OS" == x"" ]; then
      error "Unable to detect OS on node $node."
      exit 2
    fi
    set_packages_and_check_cmd "$OS"
    for ((i=0; i<${#PACKAGES[@]}; i++)); do
      local package=${PACKAGES[$i]}
      kubectl exec -it $pod -- nsenter --mount=/proc/1/ns/mnt -- timeout 30 bash -c "$CHECK_CMD $package" > /dev/null 2>&1
      if [ $? != 0 ]; then
        allFound=false
        node=`kubectl get ${pod} --no-headers -o=custom-columns=:.spec.nodeName`
        error "$package is not found in $node."
      fi
    done
  done
  if [ "$allFound" == "false" ]; then
    error "Please install missing packages."
    exit 2
  else
    info "Required packages are installed."
  fi
}
check_multipathd() {
  local pods=$(kubectl get pods -o name | grep longhorn-environment-check)
  local allNotFound=true
  for pod in ${pods}; do
    kubectl exec -t $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c "systemctl status --no-pager multipathd.service" > /dev/null 2>&1
    if [ $? = 0 ]; then
      allNotFound=false
      node=`kubectl get ${pod} --no-headers -o=custom-columns=:.spec.nodeName`
      warn "multipathd is running on $node."
    fi
  done
  if [ "$allNotFound" == "false" ]; then
    warn "multipathd would probably result in the Longhorn volume mount failure. Please refer to https://longhorn.io/kb/troubleshooting-volume-with-multipath for more information."
  fi
}
check_iscsid() {
  local pods=$(kubectl get pods -o name | grep longhorn-environment-check)
  local allFound=true
  for pod in ${pods}; do
    kubectl exec -t $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c "systemctl status --no-pager iscsid.service" > /dev/null 2>&1
    if [ $? != 0 ]; then
      allFound=false
      node=`kubectl get ${pod} --no-headers -o=custom-columns=:.spec.nodeName`
      error "iscsid is not running on $node."
    fi
  done
  if [ "$allFound" == "false" ]; then
    exit 2
  fi
}
DEPENDENCIES=(kubectl jq mktemp)
check_dependencies ${DEPENDENCIES[@]}
TEMP_DIR=$(mktemp -d)
trap cleanup EXIT
create_ds
wait_ds_ready
check_package_installed
check_iscsid
check_multipathd
check_mount_propagation
/sbin/chkconfig iscsi on
service iscsi status
service iscsi start
service iscsi status
service iscsi start
service iscsi status
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.3.0/deploy/prerequisite/longhorn-iscsi-installation.yaml
echo "kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.3.0/deploy/prerequisite/longhorn-iscsi-installation.yaml" > setup iscsi.sh
echo "kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.3.0/deploy/prerequisite/longhorn-iscsi-installation.yaml" > setup_iscsi.sh
kubectl get pod | grep longhorn-iscsi-installation
apt-get install open-iscs
sudo apt-get install open-iscs
sudo apt-get install open-iscsi
kubectl get pod | grep longhorn-iscsi-installation
kubectl logs longhorn-iscsi-installation-pzb7r -c iscsi-installation
aptinstall iscsi-initiator-util
apt search iscsi
ls
c environment_check.sh 
detect_node_os()
{
  local pod="$1"
  OS=`kubectl exec -it $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c 'grep -E "^ID_LIKE=" /etc/os-release | cut -d= -f2'`
  if [[ -z "${OS}" ]]; then
    OS=`kubectl exec -it $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c 'grep -E "^ID=" /etc/os-release | cut -d= -f2'`
  fi
  echo "$OS"
}
detect_node_os
ls
cat environment_check.sh  | grep yum
iscsi-initiator-utils -y && sudo systemctl enable iscsid && sudo systemctl start iscsid
aptinstall iscsi-initiator-utils -y && sudo systemctl enable iscsid && sudo systemctl start iscsid
sudo systemctl enable iscsid && sudo systemctl start iscsid
systemctl status iscsid
sudo systemctl enable iscsiadm
aptinstall iscsiadm
service start iscsiadm
kubect
kubectl
kubectl get pod
kubectl delete pod longhorn-environment-check-rz9zt
kubectl get pod
kubectl get deployments
kubectl get deployment
kubectl get deployment -n all
kubectl get deployment --all-namespaces
helm repo update
helm repo add longhorn https://charts.longhorn.io4
helm repo add longhorn https://charts.longhorn.io
helm install longhorn/longhorn --name longhorn --namespace kube-storage
helm install longhorn/longhorn --namespace kube-storage longhorn
helm install --namespace kube-storage longhorn longhorn/longhorn
kubectl -n longhorn-system get pod
kubectl -n kube-storage get pod
apt-get install nfs-common
sudo apt-get install nfs-common
apt-get install nfs-common
sudo apt-get install nfs-common
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.3.0/deploy/prerequisite/longhorn-nfs-installation.yaml
kubectl get pod | grep longhorn-nfs-installation
kubectl logs longhorn-iscsi-installation-pzb7r -c iscsi-installation
sudo modprobe iscsi_tcp
systemctl start nfs-common
kubectl
kubectl get posa
kubectl get pods
systemctl start nfs-common
cd /etc
ls
cat resolv.conf
cd resolver
ls
cat localdev 
ls
cd ..
cd NetworkManager/
ls
ping google.com
sudo systemctl status networking
cd ..
ls
cd netplan
ls
netplan apply
sudo netplan apply
ping google.com
cd
cd repos
cd kube
ls
cd scripts
ls
cd ..
ls
cd setup
ls
cd rancher
ls
chmod777 
chmod 777 *
sudo chmod 777 *
./environment_check.sh 
#!/bin/bash
export RED='\x1b[0;31m'
export GREEN='\x1b[38;5;22m'
export CYAN='\x1b[36m'
export YELLOW='\x1b[33m'
export NO_COLOR='\x1b[0m'
if [ -z "${LOG_TITLE}" ]; then
  LOG_TITLE=''
fi
if [ -z "${LOG_LEVEL}" ]; then
  LOG_LEVEL="INFO"
fi
debug() {
  if [[ "${LOG_LEVEL}" == "DEBUG" ]]; then
    local log_title
    if [ -n "${LOG_TITLE}" ]; then
     log_title="(${LOG_TITLE})"
    else
     log_title=''
    fi
    echo -e "${GREEN}[DEBUG]${log_title} ${NO_COLOR}$1"
  fi
}
info() {
  if [[ "${LOG_LEVEL}" == "DEBUG" ]] ||     [[ "${LOG_LEVEL}" == "INFO" ]]; then
    local log_title
    if [ -n "${LOG_TITLE}" ]; then
     log_title="(${LOG_TITLE})"
    else
     log_title=''
    fi
    echo -e "${CYAN}[INFO] ${log_title} ${NO_COLOR}$1"
  fi
}
warn() {
  if [[ "${LOG_LEVEL}" == "DEBUG" ]] ||     [[ "${LOG_LEVEL}" == "INFO" ]] ||     [[ "${LOG_LEVEL}" == "WARN" ]]; then
    local log_title
    if [ -n "${LOG_TITLE}" ]; then
     log_title="(${LOG_TITLE})"
    else
     log_title=''
    fi
    echo -e "${YELLOW}[WARN] ${log_title} ${NO_COLOR}$1"
  fi
}
error() {
  if [[ "${LOG_LEVEL}" == "DEBUG" ]] ||     [[ "${LOG_LEVEL}" == "INFO" ]] ||     [[ "${LOG_LEVEL}" == "WARN" ]] ||     [[ "${LOG_LEVEL}" == "ERROR" ]]; then
    local log_title
    if [ -n "${LOG_TITLE}" ]; then
     log_title="(${LOG_TITLE})"
    else
     log_title=''
    fi
    echo -e "${RED}[ERROR]${log_title} ${NO_COLOR}$1"
  fi
}
detect_node_os()
{
  local pod="$1"
  OS=`kubectl exec -i $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c 'grep -E "^ID_LIKE=" /etc/os-release | cut -d= -f2'`
  if [[ -z "${OS}" ]]; then
    OS=`kubectl exec -i $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c 'grep -E "^ID=" /etc/os-release | cut -d= -f2'`
  fi
  echo "$OS"
}
set_packages_and_check_cmd()
{
  case $OS in
  *"debian"* | *"ubuntu"* )
    CHECK_CMD='dpkg -l | grep -w'
    PACKAGES=(nfs-common open-iscsi)
    ;;
  *"centos"* | *"fedora"* | *"rocky"* | *"ol"* )
    CHECK_CMD='rpm -q'
    PACKAGES=(nfs-utils iscsi-initiator-utils)
    ;;
  *"suse"* )
    CHECK_CMD='rpm -q'
    PACKAGES=(nfs-client open-iscsi)
    ;;
  *"arch"* )
    CHECK_CMD='pacman -Q'
    PACKAGES=(nfs-utils open-iscsi)
    ;;
  *"gentoo"* )
    CHECK_CMD='qlist -I'
    PACKAGES=(net-fs/nfs-utils sys-block/open-iscsi)
    ;;
  *)
    CHECK_CMD=''
    PACKAGES=()
    warn "Stop the environment check because '$OS' is not supported in the environment check script."
    exit 1
    ;;
   esac
}
check_dependencies() {
  local targets=($@)
  local allFound=true
  for ((i=0; i<${#targets[@]}; i++)); do
    local target=${targets[$i]}
    if [ "$(which $target)" == "" ]; then
      allFound=false
      error "Not found: $target"
    fi
  done
  if [ "$allFound" == "false" ]; then
    error "Please install missing dependencies."
    exit 2
  else
    info "Required dependencies are installed."
  fi
}
create_ds() {
cat <<EOF > $TEMP_DIR/environment_check.yamlapiVersion: apps/v1
kind: DaemonSet
metadata:
  labels:
    app: longhorn-environment-check
  name: longhorn-environment-check
spec:
  selector:
    matchLabels:
      app: longhorn-environment-check
  template:
    metadata:
      labels:
        app: longhorn-environment-check
    spec:
      hostPID: true
      containers:
      - name: longhorn-environment-check
        image: alpine:3.12
        args: ["/bin/sh", "-c", "sleep 1000000000"]
        volumeMounts:
        - name: mountpoint
          mountPath: /tmp/longhorn-environment-check
          mountPropagation: Bidirectional
        securityContext:
          privileged: true
      volumes:
      - name: mountpoint
        hostPath:
            path: /tmp/longhorn-environment-check
EOF

  kubectl create -f $TEMP_DIR/environment_check.yaml > /dev/null
}
cleanup() {
  info "Cleaning up longhorn-environment-check pods..."
  kubectl delete -f $TEMP_DIR/environment_check.yaml > /dev/null
  rm -rf $TEMP_DIR
  info "Cleanup completed."
}
wait_ds_ready() {
  while true; do
    local ds=$(kubectl get ds/longhorn-environment-check -o json)
    local numberReady=$(echo $ds | jq .status.numberReady)
    local desiredNumberScheduled=$(echo $ds | jq .status.desiredNumberScheduled)
    if [ "$desiredNumberScheduled" == "$numberReady" ] && [ "$desiredNumberScheduled" != "0" ]; then
      info "All longhorn-environment-check pods are ready ($numberReady/$desiredNumberScheduled)."
      return
    fi
    info "Waiting for longhorn-environment-check pods to become ready ($numberReady/$desiredNumberScheduled)..."
    sleep 3
  done
}
check_mount_propagation() {
  local allSupported=true
  local pods=$(kubectl -l app=longhorn-environment-check get po -o json)
  local ds=$(kubectl get ds/longhorn-environment-check -o json)
  local desiredNumberScheduled=$(echo $ds | jq .status.desiredNumberScheduled)
  for ((i=0; i<desiredNumberScheduled; i++)); do
    local pod=$(echo $pods | jq .items[$i])
    local nodeName=$(echo $pod | jq -r .spec.nodeName)
    local mountPropagation=$(echo $pod | jq -r '.spec.containers[0].volumeMounts[] | select(.name=="mountpoint") | .mountPropagation')
    if [ "$mountPropagation" != "Bidirectional" ]; then
      allSupported=false
      error "node $nodeName: MountPropagation is disabled"
    fi
  done
  if [ "$allSupported" != "true" ]; then
    error "MountPropagation is disabled on at least one node. As a result, CSI driver and Base image cannot be supported."
    exit 1
  else
    info "MountPropagation is enabled."
  fi
}
check_package_installed() {
  local pods=$(kubectl get pods -o name | grep longhorn-environment-check)
  local allFound=true
  for pod in ${pods}; do
    OS=`detect_node_os $pod`
    if [ x"$OS" == x"" ]; then
      error "Unable to detect OS on node $node."
      exit 2
    fi
    set_packages_and_check_cmd "$OS"
    for ((i=0; i<${#PACKAGES[@]}; i++)); do
      local package=${PACKAGES[$i]}
      kubectl exec -i $pod -- nsenter --mount=/proc/1/ns/mnt -- timeout 30 bash -c "$CHECK_CMD $package" > /dev/null 2>&1
      if [ $? != 0 ]; then
        allFound=false
        node=`kubectl get ${pod} --no-headers -o=custom-columns=:.spec.nodeName`
        error "$package is not found in $node."
      fi
    done
  done
  if [ "$allFound" == "false" ]; then
    error "Please install missing packages."
    exit 2
  else
    info "Required packages are installed."
  fi
}
check_multipathd() {
  local pods=$(kubectl get pods -o name | grep longhorn-environment-check)
  local allNotFound=true
  for pod in ${pods}; do
    kubectl exec -t $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c "systemctl status --no-pager multipathd.service" > /dev/null 2>&1
    if [ $? = 0 ]; then
      allNotFound=false
      node=`kubectl get ${pod} --no-headers -o=custom-columns=:.spec.nodeName`
      warn "multipathd is running on $node."
    fi
  done
  if [ "$allNotFound" == "false" ]; then
    warn "multipathd would probably result in the Longhorn volume mount failure. Please refer to https://longhorn.io/kb/troubleshooting-volume-with-multipath for more information."
  fi
}
check_iscsid() {
  local pods=$(kubectl get pods -o name | grep longhorn-environment-check)
  local allFound=true
  for pod in ${pods}; do
    kubectl exec -t $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c "systemctl status --no-pager iscsid.service" > /dev/null 2>&1
    if [ $? != 0 ]; then
      allFound=false
      node=`kubectl get ${pod} --no-headers -o=custom-columns=:.spec.nodeName`
      error "iscsid is not running on $node."
    fi
  done
  if [ "$allFound" == "false" ]; then
    exit 2
  fi
}
DEPENDENCIES=(kubectl jq mktemp)
check_dependencies ${DEPENDENCIES[@]}
TEMP_DIR=$(mktemp -d)
trap cleanup EXIT
create_ds
wait_ds_ready
check_package_installed
exit
cd linux
cd repos
cd linux/
ls
exe startup-debug.sh 
./startup-debug.sh 
kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl > /dev/null
reload
exit
vim .config/trueline/nord-trueline.sh 
exit
vim .config/trueline/nord-trueline.sh 
ls
ewload
reload
ls
ss
reload
vim .config/trueline/nord-trueline.sh 
ewload
reload
exit
vim .config/trueline/nord-trueline.sh 
reload
vim .config/trueline/nord-trueline.sh 
ls
cd .config
ls
..
reload
cd .config
ls
cd trueline/
ls
..
cd kube-forwarder/
ls
cat CURRENT 
cat MANIFEST-000006 
cd sentry
ls
cat scope.hson
cat scope.json
cat scope...
..
ls
cat config.json 
cat vuex.json 
kube-forwarder
v .aliases
cd
v .aliases
cd reois
cd repos
cd kube
cd repos
gclone https://github.com/azure/draft
gcl https://github.com/azure/draft
kubeadm
nc 127.0.0.1 6443
https://packages.cloud.google.com/apt/doc/apt-key.gpg
sudo curl -fsSLo https://packages.cloud.google.com/apt/doc/apt-key.gpg
sudo curl -fsSLo https://packages.cloud.google.com/apt/doc/apt-key.gpg"
sudo curl -fsSLo "https://packages.cloud.google.com/apt/doc/apt-key.gpg"
curl -fsSLo "https://packages.cloud.google.com/apt/doc/apt-key.gpg"
(
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg "https://packages.cloud.google.com/apt/doc/apt-key.gpg"~;2~A;2~;2~-
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-mark hold kubelet kubeadm kubectl
kubectl
ikubeadm
kubeadm
kubelet
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-get install  kubelet kubeadm kubectl
sudo apt-mark unhold kubelet kubeadm kubectl
sudo apt-get install  kubelet kubeadm kubectl
la
kubectl
rd
ls
cd repos
cd ls
ls
cd kube
ls
c cka
c cka.md
ls
cd bin
cd types
.
cd types
vim ~/.config/trueline/nord-trueline.sh 
reload
vim ~/.config/trueline/nord-trueline.sh 
reload
ka
ls
cd .kuuve
cd .kube
cd
cd .kube
ls
c config
kc confif
kc config
kc config view
cd repis
cd 
ls
cd repis
ls
cd harboe
ls
..
cd charts
s
ls
..
rf charts
rf harbor
cd freestuffdev/
ls
cat kubernetes.md 
kubernetes.md.
ls
..
ls
cd kuve
ls
cd bin
ls
cd gelm
ls
cat get_helm.sh 
s
ls
..
ls
kedge
ls
c git-sync
c git-sync.sg
c git-sync.sh
ls
kubectl get all
kubectl get svc --all-namespaces -o go-template='{{range .items}}{{range.spec.ports}}{{if .nodePort}}{{.nodePort}}{{"\n"}}{{end}}{{end}}{{end}}'
cd ..
ls
cd scripts
ls
mv deploymenta/ deployments
mkdir ports
cd porta
echo "kubectl get svc --all-namespaces -o go-template='{{range .items}}{{range.spec.ports}}{{if .nodePort}}{{.nodePort}}{{"\n"}}{{end}}{{end}}{{end}}'

* 
"
echo "kubectl get svc --all-namespaces -o go-template='{{range .items}}{{range.spec.ports}}{{if .nodePort}}{{.nodePort}}{{"\n"}}{{end}}{{end}}{{end}}'" > get-all-ports.sh
kubectl get svc --all-namespaces 
echo "kubectl get svc --all-namespaces" > get-ports.sh
kubectl get svc -o json | jq '.items[] | {name:.metadata.name, p:.spec.ports[] } | select( .p.nodePort != null ) | "\(.name): localhost:\(.p.nodePort) -> \(.p.port) -> \(.p.targetPort)"'
kubectl get svc -o json | jq '.items[] 

kubectl get svc -o json | jq '.items[]' 
kubectl get svc --all-namespaces -o json | jq '.items[]' 
echo "kubectl get svc --all-namespaces -o json | jq '.items[]'" > get-ports-jq.sh
kc config
kc config view
kc config currebt-context
kc config current-context
kc get pids
kc get pods
kc get pods --all-namespaces
kc describe svclb-harbor-fa42712d-t4g5n
kc describe pods svclb-harbor-fa42712d-t4g5n
kc describe pods portainer
kc describe pods portainer-57f6fbc9c8-pdwd2
kc describe pods portainer-57f6fbc9c8-pdwd2 --all-namespaces
kc describe pods portainer-57f6fbc9c8-pdwd2 -n kube-apls
kc describe pods svclb-harbor-fa42712d-t4g5n -n kube-apps
vim .aliasea
vim .aliases
k
vim .aliases
rwload
e
vim .aliases
r
eeload
reload
k
kc
kgwt
kget
kcget
vim .aliases
kg
kg --help
vim .aliases
kcall
reload
vim .aliases
kubectl --helpoo
kubectl get pods -help
kubectl get pods -he
kubectl get pods
kubectl get pod
kubectl get pod --help
kall
kcall
reload
kcalk
kcall
vim .aliases
reload
reload
ls
ls -la\
ls -la
-s
ls
reload
ls
la
ls -la
reload
ls -la
reload
ls -la
reload
ls
ls -la
reload
ls
cd .config
cd trueline
ls
./nord-trueline.sh 
ls
./trueline.sh 
sh .nord_trueline.sh
ls
sh ./nord-trueline.sh 
vim nord-trueline.sh
kubectl get all -n kubernetes-dashboard
k3s --version
kubectl --version
kubectlversion
kubectl
kubectl versionb
kubectl version
kubectl version --short
cd /iusr
cd local
cd bin
ls
ping google.co.za
docker pss
docker ps
docker container ls
docker container ls -a
c
cd
cd .trueline
v .trueline
check_package_installed
cd /
cd 
cd repos
cd kube
cd setup
ls
cd rancher
ls
./environment_check.sh 
detect_node_os()
{
  local pod="$1"
  OS=`kubectl exec -i $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c 'grep -E "^ID_LIKE=" /etc/os-release | cut -d= -f2'`
  if [[ -z "${OS}" ]]; then
    OS=`kubectl exec -i $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c 'grep -E "^ID=" /etc/os-release | cut -d= -f2'`
  fi
  echo "$OS"
}
detect_node_od
detect_node_os
OS=`kubectl exec -i $pod -- nsenter --mount=/proc/1/ns/mnt -- bash -c 'grep -E "^ID_LIKE=" /etc/os-release | cut -d= -f2'`
#!/bin/bash
NAMESPACE=${NAMESPACE:-longhorn-system}
remove_and_wait() {
  local crd=$1
  out=`kubectl -n ${NAMESPACE} delete $crd --all 2>&1`
  if [ $? -ne 0 ]; then
    echo $out
    return
  fi
  while true; do
    out=`kubectl -n ${NAMESPACE} get $crd -o yaml | grep 'items: \[\]'`
    if [ $? -eq 0 ]; then
      break
    fi
    sleep 1
  done
  echo all $crd instances deleted
}
remove_crd_instances() {
  remove_and_wait volumes.longhorn.rancher.io
  # TODO: remove engines and replicas once we fix https://github.com/rancher/longhorn/issues/273
  remove_and_wait engines.longhorn.rancher.io
  remove_and_wait replicas.longhorn.rancher.io
  remove_and_wait engineimages.longhorn.rancher.io
  remove_and_wait settings.longhorn.rancher.io
  # do this one last; manager crashes
  remove_and_wait nodes.longhorn.rancher.io
}
# Delete driver related workloads in specific order
remove_driver() {
  kubectl -n ${NAMESPACE} delete deployment.apps/longhorn-driver-deployer
  kubectl -n ${NAMESPACE} delete daemonset.apps/longhorn-csi-plugin
  kubectl -n ${NAMESPACE} delete statefulset.apps/csi-attacher
  kubectl -n ${NAMESPACE} delete service/csi-attacher
  kubectl -n ${NAMESPACE} delete statefulset.apps/csi-provisioner
  kubectl -n ${NAMESPACE} delete service/csi-provisioner
  kubectl -n ${NAMESPACE} delete daemonset.apps/longhorn-flexvolume-driver
}
# Delete all workloads in the namespace
remove_workloads() {
  kubectl -n ${NAMESPACE} get daemonset.apps -o yaml | kubectl delete -f -
  kubectl -n ${NAMESPACE} get deployment.apps -o yaml | kubectl delete -f -
  kubectl -n ${NAMESPACE} get replicaset.apps -o yaml | kubectl delete -f -
  kubectl -n ${NAMESPACE} get statefulset.apps -o yaml | kubectl delete -f -
  kubectl -n ${NAMESPACE} get pods -o yaml | kubectl delete -f -
  kubectl -n ${NAMESPACE} get service -o yaml | kubectl delete -f -
}
# Delete CRD definitions with longhorn.rancher.io in the name
remove_crds() {
  for crd in $(kubectl get crd -o jsonpath={.items[*].metadata.name} | tr ' ' '\n' | grep longhorn.rancher.io); do
    kubectl delete crd/$crd
  done
}
remove_crd_instances
remove_driver
remove_workloads
remove_crds
help repo list
help repo ls
help repo
help repos
helm repos
helm repo
helm repo list
helm repo update
helm repo remove openstack-helm
helm repo update
helm install longhorn longhorn/longhorn --namespace longhorn-system --create-namespace
apt-get instsall iscsiadm/open-iscsi
aptinstall iscsiadm/open-iscsi
aptinstall iscsiadm
apt-get install tgt -y
sudo apt-get install tgt -y
tgtadm --mode target --op show
systemctl status tgt
apt-get install open-iscsi -y
sudo apt-get install open-iscsi -y
systemctl restart open-iscsi iscsid
systemctl status open-iscsi
vim /etc/iscsi/iscsid.conf
vim /etc/iscsi/initiatorname.iscsi
vim /etc/tgt/conf.d/k8s_iscsi.conf
cd /etc/tgt/conf.d/
ls
la
vim k8s_iscsi.conf
ls
systemctl restart tgt
systemctl restart iscsid
iscsiadm -m discovery -t st -p 10.10.10.10
10.10.10.10:3260,1 iqn.2021-10.rawle:ubuntu1.initiator01
iscsiadm -m discovery -t st -p 10.10.10.10 10.10.10.10:3260,1 iqn.2021-10.rawle:ubuntu1.initiator01
iscsiadm -m discovery -t st -p 192.168.68.120 192.168.68.120:3260,1 iqn.2021-10.rawle:ubuntu1.initiator01
sudo iscsiadm -m discovery -t st -p 192.168.68.120 192.168.68.120:3260,1 iqn.2021-10.rawle:ubuntu1.initiator01
iscsiadm -m node --login
sudo systemctl restart open-iscsi; sudo systemctl enable open-iscsi
systemctl status open-iscsi
nsenter [--mount=/host/proc/1/ns/mnt --net=/host/proc/1/ns/net iscsiadm --version], output , stderr, nsenter
nsenter
check_package_installed output
nsenter output
nsenter
nsenter [--mount=/host/proc/1/ns/mnt --net=/host/proc/1/ns/net iscsiadm --version]
cd /host
iscsiadm -m session -o show
cd ..
cd iscsi/
ls
cat initiatorname.iscsi 
cat iscsid.conf 
systemctl restart open-iscsi iscsid
systemctl status open-iscsi iscsid
iscsiadm -m node --login
iscsiadm
iscsiadm --help
nsenter:
nsenter
nsenter [--mount=/host/proc/1/ns/mnt --net=/host/proc/1/ns/net iscsiadm --version]
Failed environment check, please make sure you have iscsiadm/open-iscsi installed on the host
cd 
cd repos
ls
cd kube
cd setups
cd ranchher
ls
./environment_check.sh 
vim environment_check.sh 
ls
realod
reload
cd .aliases
vim .aliases
cd
cd .aliases
ls
vim .aliases
vim .trueline
cd cofnig
vim .cofnig
cd .config
cd .trueline
vim nord-trueline.sh 
ls
reload
vim .nord-trueline.sh
vim .trueline
ls
vim nord-trueline.sh 
reload
./nord-trueline.sh 
aptinstall bash-aliases
apt install bash-completion
sudo apt install bash-completion
aptremove bash-completion
apt-install bash-completion
aptinstall bash-completion
reload
ls
./nord-trueline.sh 
vim .bashrc
cd
vim .bashrc
vim .config/trueline/nord-trueline.sh 
reload
la
./.trueline
vim .aliases
reload
./trueline
ls
ls -la
./.trueline
set -e
./.trueline
set +e
./.trueline
set -a
./.trueline
set +a
./.truelineA
./.trueline
vim .trueline
kc cluster info
kc cluster-info
vim .aliases
kcall
reload
cd .confif
cd .truinw
cd .trueline
ls
v nord-trueline.sh 
reload
ls
vim nord-trueline.sh 
cd 
vim .trueline
./trueline
./.trueline
exit
./.trueline 
ls
exit
./.trueline 
ls
cd .config
cd truekind
cd trueline/
./nord-trueline.sh 
ls
vim nord-trueline.sh 
./nord-trueline.sh 
ls
rekoad
reload
ls
./nord-trueline.sh 
exit
./.trueline 
exir
exit
cd .config/
cd trueline/
vim nord-trueline.sh 
reload
vim .bashrc
cd
vim .bashrc
reload
exut
exit
vim .bashrc
exit
07_9 
reload
ls
la
ls
reload
vim .aliases 
reload
vim .aliases 
reload
cd Downloads/
ls
wget https://github.com/sharkdp/hyperfine/releases/download/v1.13.0/hyperfine_1.13.0_amd64.deb
hyperfine_1.13.0_amd64.deb
sudo dpkg -i hyperfine_1.13.0_amd64.deb
hyperfine --runs 5 'sleep 0.3'
hyperfine --runs 5 'ls'
hyperfine --runs 5 'ls -la'
ls
cd
v .trueline
kall
cd .kube
v config 
cd ..
cd .doxker
ls
cat config.json 
ls
cd contexts/
ls
cd .
lsof 80
lsof
lsof:90
sudo netstat -tulpn | grep 80
sudo netstat -tulpn | grep 4443
sudo netstat -tulpn | grep 443
v .config/trueline/nord-trueline.sh 
reliad
reload
v .config/trueline/nord-trueline.sh 
reloaf
reload
v .config/trueline/nord-trueline.sh 
reload
v .config/trueline/nord-trueline.sh 
reload
ls
cd Downloads
ls
v .config/trueline/nord-trueline.sh 
cd
v .config/trueline/nord-trueline.sh 
reload
v .config/trueline/nord-trueline.sh 
reload
v .config/trueline/nord-trueline.sh 
reload
v .config/trueline/nord-trueline.sh 
reload
vv   shshss
v .bashrc
v .aliases
v .functions
kfind harbor
cd var
cd /var
cd lib
ls
cd rancher
cd doxker
sudo su
cd 
la
cd .config
ls
cd he
cd helm
ls
cd ..
cd rancher-desktop/
ls
c credential-server.json 
c settings.json 
ls
c rd-engine.json 
cd ..
cd 'Rancher Desktop'/
ls
..
ls
..
ls
la
cd .local
ls
cd bin
ls
..
ls
cd kib
ls
..
cd share
ls
..
cd share
cd rancher-desktop/
ls
cd lima
ls
cd _confif
ls
..
ls
cd logs
ls
c k3s.log
ls
la
..
ls
..
ls
..
ls
..
ls
la
cd .rd
ls
la
cd bin
ls
./nerdctl
./nerdctl info
./nerdctl images
./nerdctl 
ls
cd
la
cd .kube
ls
c config 
s
ls
la
..
la
.
..
ls
la
cd pyromaniac/
ls
la
cd 
cd /
ls
cd lib
ls
kubectl
ku cluster-info
kc cluster-info
kc config
kc config view
rancher
cancher ps
rancher ps
rancher login
rancher login --token gjsb2mqcplszqwt7kljxhq6ppsm5ltkpt84r74bhrdlwsz6zn8dkh6
rancher login --token "gjsb2mqcplszqwt7kljxhq6ppsm5ltkpt84r74bhrdlwsz6zn8dkh6"
rancher login --token "gjsb2mqcplszqwt7kljxhq6ppsm5ltkpt84r74bhrdlwsz6zn8dkh6" https://delaporte.manakin-velociraptor.ts.net
rancher login --token "token-n44f4:gjsb2mqcplszqwt7kljxhq6ppsm5ltkpt84r74bhrdlwsz6zn8dkh6" https://delaporte.manakin-velociraptor.ts.net
rancher login --token "token-n44f4:gjsb2mqcplszqwt7kljxhq6ppsm5ltkpt84r74bhrdlwsz6zn8dkh6" https://delaporte.manakin-velociraptor.ts.net:39805
rancher login --token "token-n44f4:gjsb2mqcplszqwt7kljxhq6ppsm5ltkpt84r74bhrdlwsz6zn8dkh6" https://localhost:39805
rancher login --token "token-n44f4:gjsb2mqcplszqwt7kljxhq6ppsm5ltkpt84r74bhrdlwsz6zn8dkh6" https://delaporte.manakin-velociraptor.ts.net:39805
rancher login --token "token-n44f4:gjsb2mqcplszqwt7kljxhq6ppsm5ltkpt84r74bhrdlwsz6zn8dkh6" https://localhost:39805
rancher
rancher --config
rancher tokem
rancher token
rancher server
rancher server ls
rancher server switch
rancher settings
rancher ligin
rancher login
rancher login --token "token-n44f4:gjsb2mqcplszqwt7kljxhq6ppsm5ltkpt84r74bhrdlwsz6zn8dkh6" https://localhost:39805 --skip-verify
rancher login --token "token-n44f4:gjsb2mqcplszqwt7kljxhq6ppsm5ltkpt84r74bhrdlwsz6zn8dkh6" https://localhost:39805 --skip-verify --context=rancher-desktop
ls
..
ls
cd isr
ls
cd local
ls
reload
vim nord-trueline.sh 
reload
vim nord-trueline.sh 
reload
k3s --version
cd
cd .local
cd bin
ls
chmodall
ls
cd
k3s --version
grep server ~/.kube/config
restart
sudo shutdown
ls
kubectl describe svc traefik-ingress-service --namespace=kube-system
kubectl --namespace=kube-system get pods
kgpods
kgdep
kgall
kcgetall
kgall
kubectl get --all
kubectl get a
kubectl get all
kc get service
kc describe traefik
kc describe service traefik
vim .config/trueline/nord-trueline.sh 
reload
vim .config/trueline/nord-trueline.sh 
reload
ls
vim .config/trueline/nord-trueline.sh 
reloa
vim .config/trueline/nord-trueline.sh 
la
v .aliases
ls
cd repos
cd kuve
cd repos
gitclone https://github.com/56kcloud/traefik-training.git
git clone https://github.com/traefik-workshops/k3s-and-traefik-proxy.git
cd k3s-and-traefik-proxy/
ls
git reset --hard 72a43c84d7
ls
rf .git
ls
la
rf .git
..
ls
gitclone https://github.com/traefik-workshops/traefik-workshop-2
gitclone https://github.com/traefik-workshops/traefik-workshop
gitclone https://github.com/pariz/countries
gitclone https://github.com/traefik/mesh-helm-chart
gitclone https://github.com/traefik/traefik-helm-chart
gitclone https://github.com/traefik/microsoft-hands-on
gitclone https://github.com/56kcloud/ee-workshop
gitclone 
gitclone https://github.com/hobby-kube/guide
gitclone https://github.com/hobby-kube/provisioning
gitclone https://github.com/hobby-kube/manifests
..
cd setup
wget https://github.com/apprenda/kismatic/releases/download/v1.12.0/kismatic-v1.12.0-linux-amd64.tar.gz
c .kube/confif
c .kube/config
kubectl get service -n kube-system traefik
export CLUSTERHTTP=`kubectl get service -n kube-system traefik -o json | jq '.spec.ports[0].nodePort'`
export CLUSTERHTTPS=`kubectl get service -n kube-system traefik -o json | jq '.spec.ports[1].nodePort'`
kubectl expose deploy/traefik -n kube-system --port=9000 --target-port=9000 --name=traefik-dashboard
kubectl create ingress traefik-dashboard --rule="dashboard.traefik.$CLUSTERIP.sslip.io/*=traefik-dashboard:9000"
echo $CLUSTERIP
grep server ~/.kube/config
export CLUSTERIP=127.0.0.1
kubectl create ingress traefik-dashboard --rule="dashboard.traefik.$CLUSTERIP.sslip.io/*=traefik-dashboard:9000"
curl -si http://dashboard.traefik.$CLUSTERIP.sslip.io:$CLUSTERHTTP/dashboard/ | head -n 1
echo $CLUSTERHTTP
echo http://dashboard.traefik.$CLUSTERIP.sslip.io:$CLUSTERHTTP/dashboard/
echo $CLUSTERHTTPS
echo https://dashboard.traefik.$CLUSTERIP.sslip.io:$CLUSTERHTTPS/dashboard/
kubectl port-forward -n kube-system “$(kubectl get pods -n kube-system| grep ‘^traefik-‘ | awk ‘{print $1}’)” 9000:9000 Forwarding from 127.0.0.1:9000 -> 9000
kubectl port-forward -n kube-system “$(kubectl get pods -n kube-system| grep '^traefik-' | awk '{print $1}')" 9000:9000 Forwarding from 127.0.0.1:9000 -> 9000
kubectl port-forward -n kube-system "$(kubectl get pods -n kube-system| grep '^traefik-' | awk '{print $1}')" 9000:9000 Forwarding from 127.0.0.1:9000 -> 9000
kubectl annotate ingress traefik-dashboard traefik.ingress.kubernetes.io/router.entrypoints=web
kubectl get crd | grep traefik
kubectl describe AddOn traefik -n kube-system
cat /var/lib/rancher/k3s/server/manifests/traefik.yaml
reload
kubectl -n kube-system port-forward deploy/traefik 9000:9000
cd dotty
cd shell
cd dotty
ls
duh
du
c ~/.aliases
du0
du1
mkdir src
mv mac src
mv linux src
ls
mv windows win
mv win src
ls
c bash.sh
ls
ls ~/.*
ls --help
ls ~/.* -F
ls ~/.* -help
ls ~/.* --help
to list only the dot files in the current directory
find .  -maxdepth 1 -type f -name ".*" | xargs ls --color=tty
cd
find .  -maxdepth 1 -type f -name ".*" | xargs ls --color=tty
vim shell/dotty/install.sh
cd shell
cd dotty
ls
cd src
ls
cd linux
ls
du1
cd all
ls
du2
cat .exports
cat .exports.sh
cat exports.sh
ls
cat _whatis.txt 
rm _what*
ls
..
ls
la
mv all/bashrc.sh .bashrc
ls
la
cat .bashrc
1ls
ls
la
ls
..
ls
..
ls
touch .synonyms
v .synonyms
cd shell
ls
cd 
ls -d .*
ls -h
ls --help
64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;67;31M64;72;31M64;72;31M64;72;31M64;72;31M64;72;31M64;72;31M64;72;31M64;72;31M64;72;31M
ls --help
ls -df .*
cd .vim
..
ls -d .b*
ls -d .[!]*
ls -d .[!.]*
ls -d .??*
ls -p | grep -v /
ls -p 
ls -ap 
ls -ap | grep -v /
64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M64;16;37M65;16;37M
ls -ap | grep -v /
ls -apd | grep -v /
ls -ap | grep -v /
ls -abp | grep -v /
ls -abp .* | grep -v /
ls -abp -d .* | grep -v /
la
ls -abp -d .* | grep -v /
ls -abp -d .* | grep -v / | grep -g {.old,.json}
ls -abp -d .* | grep -v / | grep -v {.old,.json}
ls -abp -d .* | grep -v / | grep -v .old
ls -abp -d .* | grep -v / | grep -v .old | grep -v .log::
ls -abp -d .* | grep -v / | grep -v .old | grep -v .log | grep -v .json
rm .pureline.conf
echo "ls -abp -d .* | grep -v / | grep -v .old | grep -v .log | grep -v .json" > shell/dotty/backup.sh
for f in $(ls -abp -d .* | grep -v / | grep -v .old | grep -v .log | grep -v .json)
do
echo $f
done
for f in $(ls -abp -d .* | grep -v / | grep -v .old | grep -v .log | grep -v .json)
do
cp $f ~/shell/dotty/backup
done
for f in $(ls -abp -d .* | grep -v / | grep -v .old | grep -v .log | grep -v .json)
do
cp $f ~/shell/dotty/backup
done
for f in $(ls -abp -d .* | grep -v / | grep -v .old | grep -v .log | grep -v .json)
do
cp $f $HOME/shell/dotty/backup
done
cd shell
cd dotty
ls
du1
cd src
du1
cd linux
du2
cd all/local
du2
ls
cd share
ls
cd nano
ls
..
ls
..
ls
cd bin
ls
..
ls
cd lib
ls
..
rf lib
rf share
rf state
ls
..
du2
cd local
la
ls .local
cd .local
ls bin
..
ls
cd bin
ls
64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M64;15;40M
rf 
rf .local
ls
.
..
rf .local
du
..
du2
ls
cd shell
cd dotty
du2
cd src
cd linux
du2
ls
cd all
ls
cd local
ls
cs bin
ls
cd bin
ls
cd ..
ls
cd ..
ls
mv local ../../../../binny
ls
cd termux
ls
cd ..
du2
mv config/doublecmd/ ../../../../conny
du2
ls
cd config
ls
..
mv config ../../../../conny
ls
cd ssh
ls
..
ls
..
ls
64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M64;15;2M
ls
.
..
ls
..
ls
cd src
ls
cd linux
ls
ls android/
ls centos/
rf kali
rf centos
rf andrpid
rf android
ls
ls arch
rf arch
ls
ls ubuntu/
ls
ls ubuntu/
rf ubuntu/
rf termux/
ls
cd win
ls
..
cd vim
ls
..
ls
rf win
ls
mv all/* .
ls
cd all
la
..
rf all
la
cd termux/
ls
..
rf termux/
ls ubuntu/
rf ubuntu/
la
rm pureline.conf 
cat profile.sh
cat profile
ls
la
cat .profile
c profile.sh 
