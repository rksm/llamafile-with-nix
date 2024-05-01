#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'


# echo "Downloading LLaMA-3-Instruct-8B (5.37GB)"
# wget 'https://huggingface.co/jartine/Meta-Llama-3-8B-Instruct-llamafile/resolve/main/Meta-Llama-3-8B-Instruct.Q5_K_M.llamafile?download=true'

echo "Downloading WizardCoder-Python-13B - LLAMA2 (7.33GB)"
wget 'https://huggingface.co/jartine/wizardcoder-13b-python/resolve/main/wizardcoder-python-13b.llamafile?download=true' -O wizardcoder-python-13b.llamafile

echo "Downloading Mixtral-8x7B-Instruct (30.03GB)"
wget 'https://huggingface.co/jartine/Mixtral-8x7B-Instruct-v0.1-llamafile/resolve/main/mixtral-8x7b-instruct-v0.1.Q5_K_M.llamafile?download=true' -O mixtral-8x7b-instruct-v0.1.Q5_K_M.llamafile

echo "Downloading LLaMA-3-Instruct-70B (37.25GB)"
wget 'https://huggingface.co/jartine/Meta-Llama-3-70B-Instruct-llamafile/resolve/main/Meta-Llama-3-70B-Instruct.Q4_0.llamafile?download=true' -O Meta-Llama-3-70B-Instruct.Q4_0.llamafile

echo "Downloading WizardCoder-Python-34B - LLAMA2 (22.23GB)"
wget 'https://huggingface.co/jartine/WizardCoder-Python-34B-V1.0-llamafile/resolve/main/wizardcoder-python-34b-v1.0.Q5_K_M.llamafile?download=true' -O wizardcoder-python-34b-v1.0.Q5_K_M.llamafile

