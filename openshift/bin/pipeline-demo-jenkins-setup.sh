set -o verbose
set -o xtrace
set -e


project=pipeline-demo
app=${project}-jenkins

#oc -n $project tag docker.io/openshift/jenkins-2-centos7 $app/jenkins-2-centos7:latest
#oc -n $project create is $app
#oc -n $project start-build ${app}-build
oc -n $project create -f ../buildconfigs/${app}.yml
oc -n $project create -f ../templates/${app}.yml
