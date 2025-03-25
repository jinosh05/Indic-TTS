sudo apt-get install libsndfile1-dev ffmpeg enchant-2

source ~/miniconda3/bin/activate
conda create -n tts-env pyt
conda activate tts-env
pip3 install -r requirements.txt