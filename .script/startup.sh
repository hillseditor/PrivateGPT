#!/bin/bash

echo "[PrivateGPT Startup] Checking for Hugging Face token..."
if [ -z "$HF_TOKEN" ]; then
    echo "⚠️  HF_TOKEN not set. Skipping gated model download."
    echo "You can export it with: export HF_TOKEN=your_token_here"
else
    echo "✅ Authenticated. Downloading Mixtral model and embeddings..."
    poetry run huggingface-cli login --token "$HF_TOKEN"
    poetry run python scripts/setup
fi
