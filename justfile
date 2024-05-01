set dotenv-load

default:
    just --list

[private]
prompt model prompt:
    ./{{ model }} --gpu nvidia -ngl 9999 -p "{{ prompt }}"

[private]
prompt-cpu model prompt:
    ./{{ model }} -p "{{ prompt }}"

llama3-8b prompt:
    just prompt Meta-Llama-3-8B-Instruct.Q5_K_M.llamafile "{{ prompt }}"

llama3-8b-cpu prompt:
    just prompt-cpu Meta-Llama-3-8B-Instruct.Q5_K_M.llamafile "{{ prompt }}"

llama3-70B prompt:
    just prompt Meta-Llama-3-8B-Instruct.Q5_K_M.llamafile "{{ prompt }}"

llama3-70B-web:
    ./Meta-Llama-3-8B-Instruct.Q5_K_M.llamafile --gpu nvidia -ngl 9999

llama3-70B-cpu prompt:
    just prompt-cpu Meta-Llama-3-70B-Instruct.Q4_0.llamafile "{{ prompt }}"

mixtral prompt:
    just prompt mixtral-8x7b-instruct-v0.1.Q5_K_M.llamafile "{{ prompt }}"

mixtral-cpu prompt:
    just prompt-cpu mixtral-8x7b-instruct-v0.1.Q5_K_M.llamafile "{{ prompt }}"

wizardcoder-13b prompt:
    just prompt wizardcoder-python-13b.llamafile "{{ prompt }}"

wizardcoder-13b-cpu prompt:
    just prompt-cpu wizardcoder-python-13b.llamafile "{{ prompt }}"

wizardcoder-34b-web:
    ./wizardcoder-python-34b-v1.0.Q5_K_M.llamafile --gpu nvidia -ngl 30

wizardcoder-34b prompt:
    just prompt wizardcoder-python-34b-v1.0.Q5_K_M.llamafile "{{ prompt }}"

wizardcoder-34b-cpu prompt:
    just prompt-cpu wizardcoder-python-34b-v1.0.Q5_K_M.llamafile "{{ prompt }}"
