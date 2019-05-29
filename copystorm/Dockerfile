FROM openjdk:8-jre

# Database connection parameters.
#
# If these are unset, the configuration file's settings will be used.
ENV DB_CXN=
ENV DB_USR=
ENV DB_PASS=
ENV DB_SCHEMA=

# Salesforce connection parameters.
#
# If these are unset, the configuration file's settings will be used.
ENV SF_USR=
ENV SF_TOKEN=
ENV SF_PASS=
ENV SF_TYPE=

COPY CopyStorm.zip .

RUN unzip CopyStorm.zip

COPY license.txt /CopyStorm/license.txt
COPY config.copyStorm /config.copyStorm
COPY run.sh /run.sh

CMD ["sh", "/run.sh"]
