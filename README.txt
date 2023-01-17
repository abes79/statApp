
  SSSSSS     JJJJJJJJJJ
SSS    SSS   JJJ    JJJ
SSS                 JJJ
  SSSSS             JJJ
      SSSS          JJJ 
        SSS   JJJ   JJJ
SSS     SSS  JJJ    JJJ
  SSSSSSS     JJJJJJJJ  

created by
_Sebastian Jarzebinski_


DESCRIPTION::
The current version of the app collects system data and displays it on a website.
It uses python server and bash script for this.


STATUS::
Currenty application is collecting data from the system and presenting it in python http server
at the port 8000 `http://localhost:8000`.
Time zone change can be significant, but at the moment it remains unchanged. It is set to Etc/UTC.
Dynamically created file whose name contains timestamp, it is not currently exported.
It can be downloaded from the folder that the application uses as a volume.
Data file location (volume used by docker container) can be found in the `app` folder
To export file to remote host `scp` command can be used in script `statScript.sh`, for example: 
`scp dynamic_filename login@remotehost:exported_file`


HOW_TO_USE::
At first copy aplication to desired location in server.
Next run command `docker-compose build` to build docker image.
Then docker image is ready to run, 
so by typing command `docker-compose up -d` start container.
