export REGISTER_NON_INTERACTIVE=true
export DEBIAN_FRONTEND=noninteractive

curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash

apt-get -y update
apt-get install gitlab-ci-multi-runner


# We use fodor's input system to set the needed env variables so this will work headlessly
# assuming all the info was right
gitlab-runner register --executor docker
