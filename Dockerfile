FROM  ilhammansiz17/ilham-mansiez-petercord:Petercord-Userbot

RUN git clone -b master https://github.com/IlhamMansiez/THE-PETERCORD /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/IlhamMansiez/PETERCORDBOT/master/requirements.txt

CMD ["python3","-m","userbot"]
