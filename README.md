[![Docker](https://github.com/STGConsulting/DotNetCertificationDB/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/STGConsulting/DotNetCertificationDB/actions/workflows/docker-publish.yml)

# .Net Web Developer Certification DB for Docker

While working on the certification, if you want to host the DB in a docker container, then you can pull and run this image:

```
docker pull ghcr.io/stgconsulting/DotNetCertificationDB:main
```

When running the image, select an port that will be exposed externally. SQL Server by default runs on port 1433. If you already have a DB running on port 1433, then you could select another port, like 1446. SSMS can connect to the container DB by using "localhost,1446", the username is SA and the password is "Password123!".

Note: The DB is empty, there are no security concerns with sharing the password in this repo.
