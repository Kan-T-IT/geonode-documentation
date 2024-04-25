# in your Dockerfile
FROM sphinxdoc/sphinx:7.3.7

WORKDIR /
ADD requirements_docs.txt /docs
RUN pip3 install -r requirements.txt