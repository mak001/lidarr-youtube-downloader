FROM ubuntu
RUN apt update -y
RUN DEBIAN_FRONTEND=noninteractive apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt install -y ffmpeg python3 curl python3-pip python-is-python3
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/bin/youtube-dl
RUN chmod +x /usr/bin/youtube-dl
RUN pip3 install requests eyed3 youtube-search-python numpy
COPY lidarr-youtube-downloader.py /
CMD ["python3", "/lidarr-youtube-downloader.py"]
