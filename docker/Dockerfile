FROM python:3.9-slim-buster

RUN pip install --upgrade --no-cache-dir pip && \
    pip install --upgrade --no-cache-dir \
    jupyterlab

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]

