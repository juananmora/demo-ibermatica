node('java-docker-slave') {
    stage ('CheckOut GitHub') {
        
     	 checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'githubjenkins', url: 'https://github.com/juananmora/demo-ibermatica.git']]])
	}
    stage ('Build') {
         sh "mvn package"
    }
	stage ('Upload Artifact') {
	   nexusPublisher nexusInstanceId: 'nexus3', nexusRepositoryId: 'maven-releases', packages: [[$class: 'MavenPackage', mavenAssetList: [[classifier: '', extension: '', filePath: 'target/ibermatica.war']], mavenCoordinate: [artifactId: 'demoibermatica', groupId: 'org.jenkins-ci.prueba', packaging: 'war', version: '$BUILD_NUMBER']]]
	}
	stage('SonarQube analysis') {
		withSonarQubeEnv('sonar') {
		  sh 'mvn sonar:sonar'
		} // submitted SonarQube taskId is automatically attached to the pipeline context
	}
	stage("Quality Gate"){
	    //timeout(time: 1, unit: 'HOURS') { // Just in case something goes wrong, pipeline will be killed after a timeout
		sleep(20)
		def qg = waitForQualityGate() // Reuse taskId previously collected by withSonarQubeEnv
		if (qg.status != 'OK') {
		  error "Pipeline aborted due to quality gate failure: ${qg.status}"
		}
    }
    docker.withTool("docker") {
		withDockerServer([credentialsId: "", uri: "unix:///var/run/docker.sock"]) {
			stage ('Deploy') {
				 sh "docker cp ./target/ibermatica.war tomcatcompose:/usr/local/tomcat/webapps/"
				 sh "docker restart tomcatcompose"
			}
			stage ('Build Image'){
				sh "docker build -t juananmora/ibermaticak8s:'$BUILD_NUMBER' ."
				sh "docker login -u juananmora -p "
				sh "docker push juananmora/ibermaticak8s:'$BUILD_NUMBER'"
				sh "docker image rm juananmora/ibermaticak8s:'$BUILD_NUMBER'"
				//sh """docker rmi "\$(docker images -f 'dangling=true' -q)\""""
			}

      }
    }
}


