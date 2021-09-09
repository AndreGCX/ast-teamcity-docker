# AST - TEAMCITY plugin

A docker image to give a try the new AST teamcity plugin. 
It contains the latest ast teamcity plugin version. 


```Running Teamcity Server```

- Run: 
``` docker run -p 8111:8111 ghcr.io/andregcx/ast-teamcity-docker:latest ```

- Open a browser on http://localhost:8111

- Login as Super user: In your terminal copy the Super user authentication token and paste it


```Setting Up an Agent```

- Go to Agents tab
- Click on Windows installer to download the agent installer and execute it
- Click Next and Finish until Configure Build Agent Properties windows prompts
- Set the serverUrl as ```http://localhost:8111``` and press save
- Select Run TeamCity Agent under the SYSTEM account
- Go to Unauthorized tab and click the Authorize button for you agent.

Then just use TeamCity as normal and dont forget to set the AST Checkmarx Build Step



