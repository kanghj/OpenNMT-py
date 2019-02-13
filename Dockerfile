FROM pytorch/pytorch:latest
RUN git clone https://github.com/kanghj/OpenNMT-py.git
WORKDIR "OpenNMT-py"
RUN pip install -r requirements.txt && python setup.py install
RUN mkdir data/code_deepcom
RUN mkdir log
COPY data/code_deepcom data/code_deepcom
