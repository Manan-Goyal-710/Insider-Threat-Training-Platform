pipeline {
    agent any
    options {
        skipDefaultCheckout(true)
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Manan-Goyal-710/Insider-Threat-Training-Platform.git'
            }
        }

        stage('Check Docker Path') {
            steps {
                script {
                    sh 'which docker'
                }
            }
        }

//         stage('Unit Tests') {
//             steps {
//                 script {
//                     bat 'C:\\Users\\Administrator\\AppData\\Local\\Programs\\Python\\Python310\\Scripts\\pytest'
//                 }
//             }
//         }
        // stage('Build Images') {
        //     steps {
        //         script {
        //             sh 'docker build -t gurchetbawa/insider-threat-capstone .'
        //         }
        //     }
        // }

        stage('Build Images') {
            steps {
                script {
                    // Use Docker within a Docker container
                    withDockerServer([uri: 'tcp://localhost:2375']) {
                        sh 'docker build -t gurchetbawa/insider-threat-capstone .'
                    }
                }
            }
        }

//         stage('Push Images to Hub') {
//             steps {
//                 withDockerRegistry([ credentialsId: "omghdockerhubolap-", url: "" ]) {
//                     bat 'docker push omgholap/mnist-capstone-new:code'
//                 }
//             }
//         }
//     }
// post {
//         always {
//             // This block will always be executed, regardless of the build result
//             bat 'docker logout'
//         }

//         failure {
//             emailext(
//                 attachLog: true,
//                 body: '''<html>
//                         <p>The build failed. Please check the Jenkins console output for details.</p>
//                         <p>Build URL: ${BUILD_URL}</p>
//                         </html>''',
//                 subject: 'Build Failure',
//                 to: 'harsh.sinha20@st.niituniversity.in, aryan.apte20@st.niituniversity.in,vishishta.ranjan20@st.niituniversity.in ,om.gholap20@st.niituniversity.in',
//                 mimeType: 'text/html'
//             )

//         }

//         success {
//             emailext(
//                 attachLog: true,
//                 body: 'The build was successful.',
//                 subject: 'Build Success',
//                 to: 'harsh.sinha20@st.niituniversity.in, aryan.apte20@st.niituniversity.in,vishishta.ranjan20@st.niituniversity.in ,om.gholap20@st.niituniversity.in',
//                 // to: 'harsh.sinha20@st.niituniversity.in, om.gholap20@st.niituniversity.in',
//                 mimeType: 'text/html'
//             )

//         }
     }
}