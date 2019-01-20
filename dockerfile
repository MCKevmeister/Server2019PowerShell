# Sets the base container image to Windows Server 2019 Core
FROM microsoft/windowsservercore

# Metadata indicating an image maintainer.
LABEL "version" = "1.0" "Description" = "Core with IIS"

# Use dism.exe to install IIS
RUN dism.exe /online /enable-feature /all /featurename:Web-Server /NoRestart

# Creates the Hello World file and adds our message to it.
RUN echo "Hello World – I was created from a Dockerfile!" > c:\inetpub\wwwroot\index.html
