set dotenv-load

default:
    just --list

llama3-8b prompt:
    ./Meta-Llama-3-8B-Instruct.Q5_K_M.llamafile --gpu nvidia -ngl 9999 -p "{{ prompt }}"

llama3-8b-cpu prompt:
    ./Meta-Llama-3-8B-Instruct.Q5_K_M.llamafile -p "{{ prompt }}"

# /home/robert/install/llamafile/Meta-Llama-3-70B-Instruct.Q4_0.llamafile -p 'how are you?' -ngl 9999 --gpu nvidia
