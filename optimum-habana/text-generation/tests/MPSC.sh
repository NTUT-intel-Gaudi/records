# Multi prompt Single card test
cd /root/workspace/github/optimum-habana/examples/text-generation/
python run_generation.py \
--model_name_or_path /root/workspace/model/meta-llama/Llama-3.1-8B/  \
--use_hpu_graphs \
--use_kv_cache \
--max_new_tokens 100 \
--do_sample \
--bf16 \
--batch_size 2 \
--prompt "once a upon a time" "Hi i am a"