# Docker file: a docker file is a blueprint for building docker images.
# Docker image: a docker image is a simple template for running docker containers.
# Docker container: a docker container is the actual running process where we have our package project.

# set fundation for the base image
FROM python:3.10
#here the dockerfile is pulling the python 3.10 from docker hub which already has python installed so we have all the things we need to have python in our container.

# copy a file from URL to your Docker Images, from the 'src' to the absolute path 'dest'
ADD main.py .
#Here we added the python file that we want to run in docker and define its location.

# Install additional packages
# RUN pip install pandas
#Here we installed the dependencies, we are using the pygame library in our main.py file so we have to use the pip command for installing the library

# define the default command that should be executed when running the container
CMD python main.py
#lastly we specified the entry command this line is simply running python ./main.py in our container terminal


