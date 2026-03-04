#step-1 Taking base

FROM python:3.14

#step-2 create working directory to store all file
 
WORKDIR /app
#step-3 copy all the source code from the host to the container 

copy . .

#step-4 run the necessary commands required to install the app 

RUN pip install -r  requirements.txt

#step-5 expose the port

EXPOSE 80

#step-6 run the application 

CMD ["python","run.py"]

