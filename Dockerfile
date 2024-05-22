
FROM python:3.10-slim
# Установите необходимые пакеты
RUN apt-get update && apt-get install gcc g++ git make -y && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


RUN useradd -m -u 1000 user
USER user
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH


WORKDIR $HOME/app


COPY --chown=user . $HOME/app


RUN pip install langflow>=0.5.0 -U --user


RUN chmod +x $HOME/app/run.sh


CMD ["./run.sh"]
