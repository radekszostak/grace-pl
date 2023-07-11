# grace-pl

## Notes 
I resigned from using jupyter on docker and I choosed to run notebooks locally. Libraries were installed manually. File `requirements.txt` will be provided later.

## Data processing
### Data sources
Data are stored in `data` directory.
You can download .zip from: link (permission needed).

### Data processing
The purpose of these notebooks is to convert files to dataframes stored in pickle files.

1. era5_process.ipynb - notebook with ERA5 data processing code
2. grace_process.ipynb - notebook with GRACE data processing code
3. prepare_gpm_imerg_data.ipynb - notebook with GPM IMERG data processing code
4. measurements_excel_to_geopandas.ipynb - notebook for converting excel file with measurements to geopandas dataframe
5. prepare_input.ipynb - notebook for preparing measurements data from excel to pickle file
6. merge_datasets.ipynb - notebook for merging all datasets to one pickle file


## Training
train_v1.ipynb - notebook with training code

For training you need to have prepared pickle file with dataframes from data processing step.
Training was conducted on Google Colab due to problem with installing ray tune on MacOS with M1 chip.





## Running on local machine
### Container configuration
1. Install docker on your machine.
2. Build image from Dockerfile:\
`docker build https://raw.githubusercontent.com/radekszostak/grace-pl/master/Dockerfile -t grace-pl --no-cache`
3. Create container from image:\
`docker create -p 8888:8888 --name grace-pl-container grace-pl:latest`

### Running
1. `docker start --interactive grace-pl-container`
2. Open Jupyter Lab at http://localhost:8888/ or attach running container to IDE.
