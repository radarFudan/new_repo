EV_NAME=$1
PY_VERSION=$2
# Suggested 3.9 (Personally commonly used)

conda create  -n $EV_NAME python=$PY_VERSION
conda install -n $EV_NAME numpy pandas scipy matplotlib seaborn yapf ipykernel tqdm progress ipython[notebook]
conda install -n $EV_NAME ipykernel --update-deps --force-reinstall
conda install -n $EV_NAME -c conda-forge pipreqs

# Tensorflow v1: (Only support Python 3.7)
# conda install tensorflow-gpu=1.15

# JAX
# conda install -c conda-forge jax 

# sklearn:
# conda install -c conda-forge scikit-learn

# Copy an enviroment
# conda create --clone NAME_1 --name NAME_2

# Uninstall an environment
# conda env remove --name my_environment
