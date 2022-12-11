# Extended Jupyter Minimal Notebook

Docker image based on the official Jupyter [minimal-notebook](https://github.com/jupyter/docker-stacks/tree/main/minimal-notebook) with extra tools to support the following workflows:

* Plotting graphs with matlib
* Maps using [keplergl](https://kepler.gl)

More info on [dockerhub](https://hub.docker.com/repository/docker/robwatkins/jupyter-minimal-notebook-extended)

## Using the image

It's best to store your notebooks outside the Docker image, and use a volume mount to make them available inside the image.

From the directory where your notebooks are stored, run:

```
docker run -p 8888:8888 -v $(pwd):/home/jovyan/work robwatkins/jupyter-minimal-notebook-extended
```

If you want the image to have sudo rights, add `-e GRANT_SUDO=yes` to the command.