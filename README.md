# ODMX Jupyterhub Integration for Compute and Analysis

This repository demonstrates the integration of ODMX and Jupyterhub

## Dependencies

This requires a working install of docker with compose and the ability to build
docker images

## Instructions

config.env contains the default configuration values. `jupyterhub_config_base.py`
contains an example configuration for jupyterhub which works with the custom
container for the integration

`./build.sh`

After some time, you should see a message that the jupyterhub environment is
available at http://127.0.0.1:8000/ (by default)

## Jupyterhub Environment

The work environment is defined by the docker-compose.yml file which creates the ODMX 
API instance accessible at the hostname `odxm-api` and a postgres-db instance with
postgis extensions at the hostname `odmx-db`. This is accessible by all users in the 
environment. The base jupyterhub configuration references a container built in the
build.sh to be launched with each specific user. 

The default user is created by the build.sh script, additional users can be added using
adduser inside the jupyterhub container. Jupyterhub can also be configured with external
authentication such as with an organization's LDAP directory, see juptyerhub docs.

## Running the examples

After logging in with the default username and password, there are some example
notebooks in the example_notebooks directory of each user's workspace

- `ODMX_build_example.ipynb` This notebook showcases the building of the
  example ODMX project and doing basic queries

- `ODMX_analysis_example.ipynb` This notebook showcases querying with the ODMX API and
   visualizing some data


## Acknowledgements

This project was funded under DOE SBIR Award DE-SC0024850 to Subsurface Insights and support from DOE is gratefully acknowledged.. The PI for the project is Roelof Versteeg. The project associated with this award is titled Data fusion and analysis tools to enable machine learning for systems biology and bioenergy. More detail on this project can be found at https://subsurfaceinsights.com/data-fusion-and-analysis-tools-to-enable-machine-learning-for-systems-biology-and-bioenergy/
