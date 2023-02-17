FROM continuumio/anaconda3
RUN apt-get update && apt-get upgrade -y && apt-get install -y gcc
RUN python -m pip install ecdsa fastecdsa sympy cairo-lang openzeppelin-cairo-contracts -i https://pypi.tuna.tsinghua.edu.cn/simple