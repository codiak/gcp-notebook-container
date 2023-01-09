# [START cloudbuild_quickstart_build_dockerfile]
FROM gcr.io/deeplearning-platform-release/base-cpu:latest
# Copy from local file system to container
WORKDIR /app
COPY requirements.txt requirements.txt
# install Python dependencies
RUN pip install -r requirements.txt
# copy run files (simple example log)
COPY quickstart.sh /
CMD ["/quickstart.sh"]
# [END cloudbuild_quickstart_build_dockerfile]
