# [START cloudbuild_quickstart_build_dockerfile]
FROM gcr.io/deeplearning-platform-release/base-cpu:latest
# Copy from local file system to container
WORKDIR /app
COPY requirements.txt requirements.txt
# dependencies
RUN pip3 install -r requirements.txt
# copy run files
COPY quickstart.sh /
CMD ["/quickstart.sh"]
# [END cloudbuild_quickstart_build_dockerfile]
