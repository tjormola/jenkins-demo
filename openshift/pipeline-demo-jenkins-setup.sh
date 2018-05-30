oc -n pipeline-demo tag docker.io/openshift/jenkins-2-centos7 pipeline-demo/jenkins-2-centos7:latest
oc -n pipeline-demo create is pipeline-demo-jenkins
oc -n pipeline-demo start-build pipeline-demo-jenkins-build
oc -n pipeline-demo create -f pipeline-demo-jenkins-buildconfig.yml
oc -n pipeline-demo create -f pipeline-demo-jenkins-template.yml
