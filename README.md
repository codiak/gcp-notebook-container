### notes

https://cloud.google.com/build/docs/build-push-docker-image

gcloud artifacts repositories create ml-docker-repo --repository-format=docker \
    --location=us-central1 --description="Docker images build for ML purposes"

gcloud builds submit --region=us-central1 --tag us-central1-docker.pkg.dev/ml-model-workflow-dev/ml-docker-repo/linucb-image:tag1

gcloud builds submit --region=us-central1 --config cloudbuild.yaml
