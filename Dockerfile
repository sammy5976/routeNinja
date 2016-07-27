# Install Google OR-Tools
FROM python:2-onbuild

RUN wget https://github.com/google/or-tools/releases/download/v2016-06/Google.OrTools.python.examples.3631.tar.gz
RUN tar -zxf Google.OrTools.python.examples.3631.tar.gz
WORKDIR "./ortools_examples"
RUN python setup.py install --user

CMD [ "python", "./examples/python/golomb8.py" ]
