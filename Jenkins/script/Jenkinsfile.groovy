pipeline {
    agent any
    // parameters {
        string(name:'BRANCH',defaultValue: 'master',description:'分支')
        string(name:'GIT_REPOSITORY',defaultValue: '',description:'仓库')
        string(name:'VERSION',defaultValue: 'v.4.8.1',description:'版本号')
        // booleanParam(name:'VERSION_NAME',defaultValue:false,description:'测试')
        // text(name:'VERSION_NAME',defaultValue: 'v.4.8.1',description:'版本号') 
        // choice(name:'VERSION_NAME',choice:['choice1','choice2','choice3'],description:'版本号')
        // file(name:'VERSION_NAME',defaultValue: 'v.4.8.1',description:'版本号')
        // password(name:'VERSION_NAME',defaultValue: 'v.4.8.1',description:'版本号')
        // run(name:'VERSION_NAME',defaultValue: 'v.4.8.1',description:'版本号')
        // git 分支
        // gitParameter branchFilter: 'origin/(.*)', defaultValue: 'main', name: 'BRANCH', type: 'PT_BRANCH'
    // }
    environment {
        unit_test = false
    }
    stages {
        // stage('参数test') {
        //     steps {
        //         echo '开始'
        //         // git branch: "${params.BRANCH}", url: 'git@github.com:chdo002/DDU.git'
        //         echo "${BRANCH}"
        //         echo '结束?'
        //     }
        // }
        stage('代码checkout') {
            steps {
                echo "----开始----"
                sh 'sh ./Jenkins/script/pipeline.sh ${BRANCH} ${GIT_REPOSITORY}'
                echo "----结束----"
            }
        }
        // stage ("静态检查") {
        //     steps {
        //         echo "------------"
        //     }
        // }
        // stage ("代码编译") {
        //     steps {             
        //         echo "------------"
        //     }
        // }
        // stage ("单元测试") {
        //     steps {
        //         echo "------------"
        //     }
        // }
        // stage ("打包") {
        //     steps {
        //         echo "------------"
        //     }
        // }
        // stage ("冒烟测试") {
        //     steps {
        //         echo "------------"
        //     }
        // }
        // stage ("集成测试") {
        //     steps {
        //         echo "------------"
        //     }
        // }
    }
    post {
        always {
            echo "------------"
        }
        success {
            echo "------------"
        }
        failure {
            echo "------------"
        }
        unstable {
            echo "------------"
        }
    }
}