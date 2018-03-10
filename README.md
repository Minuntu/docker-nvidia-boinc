# Boinc node docker file

## Minimal config

`BAM_URL` : Url for the Boinc account manager ( boincstats, grcpool, ... )

`BAM_USERNAME` : Your BAM username

`BAM_PASSWORD` : Your BAM password

## Run ( with nvidia Cuda, see https://github.com/NVIDIA/nvidia-docker )

`docker run --name boinc --runtime=nvidia -ti --rm -e BAM_USERNAME="xxxx" -e BAM_PASSWORD="xxx" -e BAM_URL="http://xxxx" -v boincdata:/data minuntu/nvidia-boinc`

WARNING: always use a volume, otherwise you'll lose your boinc data !
