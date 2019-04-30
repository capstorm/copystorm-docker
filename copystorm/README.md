# CopyStorm Docker Image

To use this dockerfile to run CopyStorm in a container, a few additional files are needed:
1. CopyStorm.zip -- a CopyStorm installation package, downloaded [here](https://www.capstorm.com/download)
2. config.copyStorm -- a CopyStorm configuration file, generated via CopyStorm's [File -> Save menu](https://learn.capstorm.com/copystorm/reference/configuration-files/)
3. license.txt -- a [CopyStorm license](https://learn.capstorm.com/copystorm/frequently-asked-questions/how-does-copystorm-work/how-does-capstorm-license-management-work/) allowing connection to your Salesforce instance. To obtain a license for CopyStorm, contact [Capstorm sales](https://www.capstorm.com/contact-capstorm/)

## Building the Container Image

This container can be built by:
1. Checking out this Git repo.
2. Copying the files referenced above (using the same naming convention) into the Docker folder [.](here)
3. Performing a standard Docker image build and uploading the result to your organization's container registry.

Best practices for image naming and tagging include:
* "CopyStorm" in the container name.
* The CopyStorm version in the container name or tag.
* A name that makes the configured Salesforce instance clear without having to reference the configuration file. 

## Updating the Container

To update the CopyStorm Docker Image and modify the configuration file, license, or upgrade the CopyStorm version:
1. Build a new Container image with the new file(s).
2. Follow the best practices for image naming and tagging.

## Container Runtime

When this container starts, it will run CopyStorm and back up Salesforce to the configured relational database. When the backup finishes (successfully or with an error) the container will terminate.
