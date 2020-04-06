FROM python:latest

#FROM mcr.microsoft.com/dotnet/core/sdk:2.1 AS build-env

COPY main.py /

CMD [ "python", "./main.py" ]