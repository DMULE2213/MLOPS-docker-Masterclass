# use an official python run time as a parent image
FROM python:3.8-slim

# set the working directory in a container
WORKDIR /app

# copy the current directory contents into the container at /app
COPY . /app

# install any needed packages specified in requirement.txt
RUN pip install --no-cache-dir -r requirements.txt

# make port 500 available to  the owrld outside this container
EXPOSE 5000

# Define enviroment variable
ENV FLASK_APP=app.py

# Run the  Flask app
# CMD ["Flask", "run", "--host=0.0.0.0"]
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]