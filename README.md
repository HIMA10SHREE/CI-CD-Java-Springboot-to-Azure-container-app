# CI-CD-Java-Springboot-to-Azure-container-app


# Install java and maven

```bash
Java  :   https://download.oracle.com/java/21/latest/jdk-21_windows-x64_bin.exe 
maven :  https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.zip 
 ```

 

 

# Extensions for vscode: 

```bash
   1. Extension Pack for Java 
   2. Spring Boot Extension Pack  [which includes Spring Boot dashboard , Spring Boot initializer,Spring Boot tools]
```
 

# building the code locally: 

```bash
1 mvn spring-boot: run 
2.  a. mvn clean install 

    b. java -jar target/hello-0.0.1-SNAPSHOT.jar  (for eg: let snapshot be hello-0.0.1-SNAPSHOT.jar) 

                           OR 

    b. go to the Springboot dashboard and click on Run icon. Hit the required page. 

 ```

 

# Testing the code locally: 

```bash
To run all the test cases 
mvn test 

To run a particular test class 
mvn -Dtest=HelloTest test 
 ```

 

# After testing locally push the code to ADO 


# Creating infrastructure in Azure through bicep script: 

```bash
ACR 
ACA
```

# Deploying the application to Azure Container App 

```bash
  1. taken the compatible maven version , extracting it and doing the maven build in the pipeline. 

  2. Dockerised the application and build and pushed the image to ACR 

  3. Managed identity generated and passed it to authenticate newly created container app. Specified port and other configurations added.
```

<img width="610" alt="Screenshot 2023-10-15 102818" src="https://github.com/HIMA10SHREE/CI-CD-Java-Springboot-to-Azure-container-app/assets/52618743/a09c4b24-49d3-46b1-affe-462bdbb59099">

<img width="898" alt="Screenshot 2023-10-15 103044" src="https://github.com/HIMA10SHREE/CI-CD-Java-Springboot-to-Azure-container-app/assets/52618743/2f21b9fb-4031-48e7-9f30-b5c37f718179">

