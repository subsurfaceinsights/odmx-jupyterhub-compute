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

## Running the examples

After logging in with the default username and password, there are some example
notebooks in the example_notebooks directory of each user's workspace

- `ODMX_build_example.ipynb` This notebook showcases the building of the
  example ODMX project and doing basic queries


## Acknowledgements

This project was funded under DOE SBIR Award DE-SC0024850 to Subsurface Insights and support from DOE is gratefully acknowledged.. The PI for the project is Roelof Versteeg. The project associated with this award is titled Data fusion and analysis tools to enable machine learning for systems biology and bioenergy. More detail on this project can be found at https://subsurfaceinsights.com/data-fusion-and-analysis-tools-to-enable-machine-learning-for-systems-biology-and-bioenergy/
