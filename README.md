# grace-pl

## Jupyter and geospatial Conda environment
In command prompt:
1. ```conda env create -f environment.yml```
2. ```conda activate geo```
3. ```jupyter lab```

## Ignore from git using ```_``` prefix
```_*``` rule is added to [.gitignore](.gitignore). For large files or folders, that should not be uploaded to GitHub use ```_``` prefix (example in [grace_process.ipynb](grace_process.ipynb)).
