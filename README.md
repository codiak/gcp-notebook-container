### notes

https://cloud.google.com/build/docs/build-push-docker-image

gcloud artifacts repositories create ml-docker-repo --repository-format=docker \
    --location=us-central1 --description="Docker images build for ML purposes"

without cloudbuild:
gcloud builds submit --region=us-central1 --tag us-central1-docker.pkg.dev/ml-model-workflow-dev/ml-docker-repo/custom-image:tag1

use cloudbuild config!
gcloud builds submit --region=us-central1 --config cloudbuild.yaml

Use derivative container!
https://cloud.google.com/deep-learning-containers/docs/derivative-container

Available images:
https://cloud.google.com/deep-learning-containers/docs/choosing-container

steps on building python docker image:
https://docs.docker.com/language/python/build-images/

# creates image:
us-central1-docker.pkg.dev/ml-model-workflow-dev/ml-docker-repo/custom-image:latest