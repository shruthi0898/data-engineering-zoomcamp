FROM python:3.9.1

# RUN pip install pandas

# ENTRYPOINT [ "bash" ]

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app
# COPY ingest_data_2021.py ingest_data_2021.py 
# COPY ingest_data_2019.py ingest_data_2019.py 
COPY ingest_data_zones.py ingest_data_zones.py 

# ENTRYPOINT [ "python", "ingest_data_2021.py" ]
# ENTRYPOINT [ "python", "ingest_data_2019.py" ]
ENTRYPOINT [ "python", "ingest_data_zones.py" ]