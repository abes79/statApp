
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
the website can be reach at the port 8000 `http://localhost:8000`.
Time zone change can be significant, but at the moment it remains unchanged. It is set to Etc/UTC.
Dynamically created file whose name contains timestamp, the data file can be downloaded using the link on the website.
Also it can be downloaded from the folder that the application uses as a volume.
Data file location (volume used by docker container) can be found in the `app` folder
To export file to remote host `scp` command can be used in script `statScript.sh`,
(this option is not implemented at this time) for example: 
`scp dynamic_filename login@remotehost:exported_file`


HOW_TO_USE::
At first copy aplication to desired location in server,
and change the permissions of the /app/statScript.sh file, 
by running the `chmod +x statScript.sh` command, make the script executable.
Next run command `docker-compose build` to build docker image.
Then docker image is ready to run, 
so by typing command `docker-compose up -d` start container.
