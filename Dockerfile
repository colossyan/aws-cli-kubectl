ARG AWS_CLI_VERSION=2.2.2
ARG KUBECTL_VERSION=1.19.6
FROM amazon/aws-cli:$AWS_CLI_VERSION

WORKDIR /aws

RUN curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/$KUBECTL_VERSION/2021-01-05/bin/linux/amd64/kubectl
RUN chmod +x kubectl
RUN mv kubectl /bin/
RUN yum install -y jq

ENTRYPOINT [""]