FROM python:3.9

WORKDIR /app

COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
RUN pip3 install ffmpeg-python
RUN pip3 install ffprobe
COPY . /app

CMD python3 -m bot
