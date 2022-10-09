# How to run

## Storing state file

Run [Bootstrap TF Backend Config](https://github.com/dptcs/simple-rest-py/actions/workflows/bootstrap-backend-config.yml) to create an Azure Storage account and a blob container to store terraform state files.
The GHA will set the necessary configuration for the next steps as well.
> :note: Run it only from a clean slate otherwise it will create another storage account as this run is not storing its state.

## Provision the infrastructure

Run [Infrastructure](https://github.com/dptcs/simple-rest-py/actions/workflows/infrastructure.yml) to provision the VM and its enablers.

## Build and deploy the app

Run [Build Publish Deploy](https://github.com/dptcs/simple-rest-py/actions/workflows/docker-publish.yml) to build the docker image of the app, push it in a Github container registry, run it in the VM already provisioned by step 2.

## Destroy the infrastructure

Once you are done with the experiments, run [Nuke It](https://github.com/dptcs/simple-rest-py/actions/workflows/nuclear.yml) to clean all the resources in the subscription without any questions asked.

> :note: This is an irreversible destructive activity. Do it with caution.
