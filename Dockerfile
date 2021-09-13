FROM tensorflow/tensorflow:2.6.0-gpu-jupyter

WORKDIR /tmp
COPY requirement.txt /tmp
RUN pip install -r requirement.txt

WORKDIR /tf
EXPOSE 8888

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]