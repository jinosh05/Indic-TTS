#!/bin/bash

word="அகர முதல எழுத்தெல்லாம் ஆதி பகவன் முதற்றே உலகு"

# Model paths and configurations
MODEL_PATH="models/v1/ta/fastpitch/best_model.pth"
CONFIG_PATH="models/v1/ta/fastpitch/config.json"
VOCODER_PATH="models/v1/ta/hifigan/best_model.pth"
VOCODER_CONFIG_PATH="models/v1/ta/hifigan/config.json"
SPEAKER_IDX="male"
OUTPUT_PATH="ta.wav"

# Construct the Python command
PYTHON_COMMAND="python3 -m TTS.bin.synthesize --text \"$word\" --model_path $MODEL_PATH --config_path $CONFIG_PATH --vocoder_path $VOCODER_PATH --vocoder_config_path $VOCODER_CONFIG_PATH --speaker_idx $SPEAKER_IDX --out_path $OUTPUT_PATH"

# Execute the command
eval "$PYTHON_COMMAND"

echo "Synthesized audio saved to $OUTPUT_PATH"