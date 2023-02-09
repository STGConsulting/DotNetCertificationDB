[![Docker](https://github.com/STGConsulting/DotNetCertificationDB/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/STGConsulting/DotNetCertificationDB/actions/workflows/docker-publish.yml)

# .Net Web Developer Certification DB in Docker

While working on the certification, if you want to host the DB in a docker container, then you can pull and run this image:

```
docker pull ghcr.io/stgconsulting/dotnetcertificationdb:main
```

To Run:
```
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Password123!" -p 1448:1433 --name DotNetCertSQL -h DotNetCertSQL -d ghcr.io/stgconsulting/dotnetcertificationdb:main
```

Note: This DB/Image is for the certification and demo's. In a production environment, you would not use "Password123!" and you would NOT put the password in the Readme.
