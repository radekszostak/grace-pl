FROM debian
RUN apt-get update
# python
RUN apt-get install -y python3.9
RUN apt-get install -y python3-pip

# git
RUN apt-get install -y git

# jupyter
RUN pip install jupyterlab
RUN pip install jupyter-server-proxy

# geospatial processing and visualization
RUN apt-get install -y gdal-bin
RUN apt-get install -y libgdal-dev
ENV CPLUS_INCLUDE_PATH=/usr/include/gdal
ENV C_INCLUDE_PATH=/usr/include/gdal
RUN pip install GDAL
RUN pip install gdal-utils
RUN pip install rasterio --no-binary rasterio
RUN pip install rioxarray
RUN pip install geopandas
RUN pip install ipyleaflet
RUN pip install leafmap
RUN pip install xarray_leaflet
RUN pip install localtileserver
ENV LOCALTILESERVER_CLIENT_PREFIX='proxy/{port}'

# pytorch
RUN pip install torch torchvision torchaudio

# other
RUN pip install scipy

# clone repo
RUN git clone https://radekszostak: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@github.com/radekszostak/aerial-thermal-tuner /home/aerial-thermal-tuner
WORKDIR /home/aerial-thermal-tuner

#---
EXPOSE 8888
ENTRYPOINT ["jupyter", "lab", "--port=8888", "--ip=0.0.0.0", "--allow-root", "--no-browser"]