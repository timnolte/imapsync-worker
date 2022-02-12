FROM gilleslamiral/imapsync AS imapsync

ARG USER1
ENV USER1=${USER1}
ARG PASSWORD1
ENV PASSWORD1=${PASSWORD1}
ARG USER2
ENV USER2=${USER2}
ARG PASSWORD2
ENV PASSWORD2=${PASSWORD2}

COPY emailsync.sh /usr/local/bin/emailsync

RUN chmod +x /usr/local/bin/emailsync

ENTRYPOINT [ "/usr/local/bin/emailsync" ]
