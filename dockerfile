# Use the official Python 3.13 image as the base environment
FROM python:3.13

#This creates a wrorking dir called app
WORKDIR /app

#This copies my code locally (defined when i do coker build) to second . my working dir
COPY . .


# Copy only the requirements.txt file to /app for dependency installation
# This helps Docker cache the install step
COPY requirements.txt .

#I install the libraies defined in requirements
RUN pip install -r requirements.txt

#Copies code again after depencies installed
COPY . . 

#Tells docker which port your app uses
EXPOSE 5000

#Sets up an app user, so app doesn't run as root user (for security)
RUN useradd app
USER app

# Specify the default command to run your application when the container starts
CMD ["python", "flaskapp.py"]

