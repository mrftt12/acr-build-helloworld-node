#pip install invoke
#export REPOSITORY="iec68503"
#export REGION="us-west1"
#gcloud artifacts repositories create $REPOSITORY --location $REGION --repository-format "docker"
#gcloud auth configure-docker
gcloud builds submit --pack image=us-west1-docker.pkg.dev/genai-462322/iec  
pack build --builder=gcr.io/buildpacks/builder iec60853


gcloud builds submit --pack image=us-west1-docker.pkg.dev/genai-462322/iec68503/iec