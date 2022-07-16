FROM TEAMREBELS/REBELBOT:latest

#clonning repo 
RUN git clone https://github.com/TEAMREBELS/REBELUSERBOT.git /root/DarkWeb
#working directory 
WORKDIR /root/DarkWeb

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/DarkWeb/bin:$PATH"

CMD ["python3","-m","DarkWeb"]
