# [START cloudbuild_quickstart_build_dockerfile]
FROM python:3.7-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt
# dependencies
RUN pip3 install -r requirements.txt
# copy run files
COPY quickstart.sh /
CMD ["/quickstart.sh"]
# [END cloudbuild_quickstart_build_dockerfile]
