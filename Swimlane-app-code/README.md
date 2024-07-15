# swimlane-practical


#### Please clone this you are provided below repo 

git clone https://github.com/swimlane/devops-practical.git

and add my docker compose file to the above cloned folder and run below steps:

      docker-compose up -d
      
it will create app images also and the our website will work with  like you ip http://192.168.29.29:3000/

https://github.com/kotojuvenu/Swimlane-DevOps-Practical/blob/main/Swimlane-app-code/swimlane-app-docker-compose.png

Push this below created image to our repository with proper credentials of docker hub.

     devops-practical_app                latest    a1604e6c8a3a   

#### Tag this image to our docker hub repo for push the image to our own docker hub 

         docker tag devops-practical_app:latest kotojuvenu06/docker-practical_app

#### Push this image to our docker hub 

         docker push kotojuvenu06/docker-practical_app                                           

#### Down the docker-compose for run kubernetes manifest files

      venu@jenkins-clone:~/devops-practical$ docker-compose down
      Stopping devops-practical_app_1     ... done
      Stopping devops-practical_mongodb_1 ... done
      Removing devops-practical_app_1     ... done
      Removing devops-practical_mongodb_1 ... done
      Removing network devops-practical_default

#### Run below commands to up service using added manifest files:

            kubectl apply -f config-map.yml
  
            kubectl apply -f mongo-db.yaml
            
            kubectl apply -f mongo-service.yml
            
            kubectl apply -f swimlane-app-configMap.yml
            
            kubectl apply -f swimlane-app-service.yml
            
            kubectl get all

##### Resorces deployed screenshot attached below.

  https://github.com/kotojuvenu/Swimlane-DevOps-Practical/blob/main/Swimlane-app-code/kubernets-resoureces-after-deployed.png

##### After fresh deployed app url page.

  https://github.com/kotojuvenu/Swimlane-DevOps-Practical/blob/main/Swimlane-app-code/kubernets-deployed-app-fresh-page.png

##### App Signup page.

  https://github.com/kotojuvenu/Swimlane-DevOps-Practical/blob/main/Swimlane-app-code/kubernets-deployed-app-signup-page.png
  
##### Chat created page.

  https://github.com/kotojuvenu/Swimlane-DevOps-Practical/blob/main/Swimlane-app-code/kubernets-deployed-app-article-creating.png

##### Final app tested page.

   https://github.com/kotojuvenu/Swimlane-DevOps-Practical/blob/main/Swimlane-app-code/kubernets-deployed-app-comments-created-pages.png


  


