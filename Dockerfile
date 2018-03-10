FROM nvidia/cuda:9.0-runtime

# Account manager :
ENV BAM_URL https://grcpool.com/
ENV BAM_USERNAME user
ENV BAM_PASSWORD password

# Install software :
RUN apt-get update && \
    apt-get install -y boinc-client supervisor && \
    apt-get clean  && rm -Rf /var/lib/apt/lists

# Prepare data dir :
RUN mkdir /data

# Install supervisor config :
ADD supervisor.conf /etc/supervisor/conf.d/boinc.conf

# Add config and startup scripts :
ADD scripts /scripts

CMD /scripts/boot.sh
