### Description

General GCP custom docker image build and upload example. This particular one is tweaked for creating an image with specific Python dependencies for use in a AI Workbench managed notebook and its executor.

Based on Cloud Build Sample:

(GCP Quickstart Build repo)[https://github.com/GoogleCloudPlatform/cloud-build-samples/tree/main/quickstart-build]

(GCP Quickstart guide)[https://cloud.google.com/build/docs/build-push-docker-image]

### Requirements to build

[gcloud CLI](https://cloud.google.com/sdk/gcloud)

[Docker](https://www.docker.com/)

### How to use

1. Create a GCP artifacts repository to store the custom image.

```
gcloud artifacts repositories create ml-docker-repo --repository-format=docker \
    --location=us-central1 --description="Docker images built for AI Workbench"
```

2. Update `requirements.txt` with desired dependencies.

3. Build and submit the image to the artifacts repository.

(using cloudbuild config)
```
gcloud builds submit --region=us-central1 --config cloudbuild.yaml
```

(without cloudbuild)
```
gcloud builds submit --region=us-central1 --tag us-central1-docker.pkg.dev/PROJECT-ID/ml-docker-repo/custom-image:tag1
```

4. Locate and use image

Should store an image with a URI like:
us-central1-docker.pkg.dev/PROJECT-ID/ml-docker-repo/custom-image:latest

### Additional resources

This custom image uses a GCP image has its derivative container:
https://cloud.google.com/deep-learning-containers/docs/derivative-container

Available GCP images:
https://cloud.google.com/deep-learning-containers/docs/choosing-container

General steps on building Python docker image:
https://docs.docker.com/language/python/build-images/
