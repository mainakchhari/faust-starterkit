FROM python:slim
WORKDIR /code
RUN apt-get update \
&& apt-get install gcc -y \
&& apt-get clean
RUN pip install cython
COPY . /code
RUN python setup.py install
ENTRYPOINT ["mwx_worker"]
CMD ["worker", "-l", "info"]
