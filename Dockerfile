FROM python:3.9.7-buster

RUN apt -y update && \
    apt install -y tzdata && \
    curl -sL https://deb.nodesource.com/setup_12.x |bash - && \
    apt install -y --no-install-recommends nodejs

RUN apt install -y locales && localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ Asia/Tokyo


# Pythonライブラリのインストール
COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    rm -rf ~/.cache/pip


# pipでインストールできないJupyterLab拡張機能
RUN jupyter labextension install @jupyterlab/toc


# Kite engineのインストール
# 現在Linux上で一時的に利用(インストール)できなくなっている(2022/1/25)
# RUN cd && \
#     wget https://linux.kite.com/dls/linux/current && \
#     chmod 777 current && \
#     sed -i 's/"--no-launch"//g' current > /dev/null && \
#     ./current --install ./kite-installer
