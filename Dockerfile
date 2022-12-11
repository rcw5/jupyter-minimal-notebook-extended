# Start from a core stack version
FROM jupyter/minimal-notebook
USER root
# Can probably play around with these dependencies
# I tried conda to install keplergl but it failed with an error
# See: https://github.com/keplergl/kepler.gl/issues/1993
RUN sudo apt-get update && \
    sudo apt-get -y install g++ python3-dev gdal-bin libgdal-dev && \
    conda install -y geos && \
    pip install keplergl matplotlib
