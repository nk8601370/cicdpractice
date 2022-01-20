FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1
RUN mkdir Django_text_analyzer
WORKDIR /Django_text_analyzer
COPY requirements.txt .
RUN pip install -r requirements.txt
ADD /Django_text_analyzer /Django_text_analyzer
EXPOSE 8000
CMD python manage.py runserver 0.0.0.0:8000