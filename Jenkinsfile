node("docker") {
    docker.withRegistry('https://cloud.docker.com', 'ryankwilson') {
    
        git url: "https://github.com/ryankwilson/orca.git", credentialsId: 'ryankwilson'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "orca"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
