# Citibike Analysis - Kris Penney (April 2018)

This archive contains the various notebooks (within [/notebooks](/notebooks)) that I used to perform my analysis for this project. I have provided them as both `ipynb` ([Jupyter Notebooks](http://jupyter.org)) and `pdf` files. Datasets have been provided under [/data](/data).

### Requirements

If you wish to run these notebooks yourself, there are a few requirements to do so:
- [Python 3.6](https://www.python.org/downloads/)
  - Once this is installed run: `pip3 install -r requirements.txt`
  - Alternatively, you can install [Anaconda](https://www.anaconda.com/distribution/) to obtain these packages.
- R
- Jupyter notebook kernels for both Python3.6 and R
  - [R Driver](https://irkernel.github.io)
  - Python3.6 kernel

```
  python3 -m pip install ipykernel
  python3 -m ipykernel install --user
```

### Provided Datasets

I have included the datasets (within `/data`) that I utilized as a part of my analysis. One dataset that was too large (~500mb compressed) was the 2017 trips dataset, which can be downloaded. Note that the notebooks have been designed to read the csv files directly as `zip` archives, therefore no need to `unzip`.

- `citibike_2017.csv.zip`: this dataset is a collection of the 2017 citibike trip dataset.
  - As noted above this file has been assembed and is hosted on my Google Drive.
  - The scripts used to build the dataset are `download_data.py` and `merge.sh` for reference.
- `citibike_stations_2017.csv.zip`: Data extracted from The Open Bus project for 2017.
  - [The source of the data is here](https://drive.google.com/drive/folders/0B6H9nKo1G98uS3kxQ1VrNGt5SjA).
- `rebalanced_bikes.csv.zip`: This file is a subset of the trips dataset (citibike_2017.csv.zip), which consists of the rebalancing trips made for 2017.
- `work_cluster.csv`: Stations that are members of the "work cluster"
- `residential_cluster.csv`: Stations that are members of the "residential cluster"
- `low_cluster.csv`: Stations that are members of the "low cluster"
- `ridership/`: This folder consists of Aggregated ridership and membership information from May 2013 - December 2017.

### Notebooks

I chose to conduct my analysis in Jupyter notebooks to easily fuse the code with explainations and visualizations. I have provided all notebooks as `ipynb` sources and `pdf` files.

- `construct_rebalancing_trips`: This notebook originally constructed the rebalanced bikes dataset from the 2017 trip data (both have been assembled and provided as the above section).
- `station_clusters`: This notebook examines `citibike_stations_2017.csv.zip` (sourced from the Open Bus Project) to produce a set of clusters as csv files.
- `ridership_forecasting`: This notebook examines the daily ridership information (`ridership/`) to produce forecasting models for demand over time.
- `balancing_predictions`: This notebook contains various models to mimic Citibike's current balancing behaviour.
