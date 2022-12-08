# Docker file for the heart disease inferential analysis project
# Kelly Wu, Zilong Yi, Stepan Zaiatc, Bruce Wu

# rocker/tidyverse as the base image
FROM rocker/tidyverse

# install R packages
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  && install2.r --error \
    --deps TRUE \
    infer \
    here \
    feather \
    knitr \
    ggthemes \
    rmarkdown \
    janitor \
    kableExtra \
    docopt


# install the anaconda distribution of python
RUN wget --quiet https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh && \
    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate base" >> ~/.bashrc && \
    find /opt/conda/ -follow -type f -name '*.a' -delete && \
    find /opt/conda/ -follow -type f -name '*.js.map' -delete && \
    /opt/conda/bin/conda clean -afy && \
    /opt/conda/bin/conda update -n base -c defaults conda

# put anaconda python in path
ENV PATH="/opt/conda/bin:${PATH}"

# install docopt python package

RUN pip install docopt-ng
RUN pip install seaborn

RUN pip install altair vega_datasets
RUN pip install altair_saver

RUN pip install dataframe_image



# RUN apt-get update
# RUN apt-get install r-base r-base-dev python3.6 python3-pip python3-setuptools -y

# RUN Rscript -e "install.packages('cowsay')"
# RUN Rscript -e "install.packages('tidyverse')"
# RUN Rscript -e "install.packages('infer')"
# RUN Rscript -e "install.packages('janitor')"
# RUN Rscript -e "install.packages('rmarkdown')"
# RUN Rscript -e "install.packages('knitr')"
# RUN Rscript -e "install.packages('kableExtra')"
# RUN Rscript -e "install.packages('here')"

# # install docopt python package
# RUN conda install -y -c anaconda \ 
#     docopt \
#     dataframe_image \ 
#     seaborn \
#     altair \
#     altair_saver 




