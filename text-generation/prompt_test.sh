PYTHON_VERSION=$(python3 -c 'import sys; version=sys.version_info[:3]; print("{0}.{1}".format(*version))')
REQUIRED_VERSION="3.10"

if [ "$PYTHON_VERSION" != "$REQUIRED_VERSION" ]; then
    echo "Python $REQUIRED_VERSION is required. You have Python $PYTHON_VERSION."
    exit 1
fi

git clone https://github.com/huggingface/optimum-habana
cd optimum-habana && git checkout v1.13.2
pip install git+https://github.com/HabanaAI/DeepSpeed.git@1.17.0

pip install -r requirements.txt

# for Single and multiple prompts
python run_generation.py \
--model_name_or_path meta-llama/Llama-3-70b-hf \
--use_hpu_graphs \
--use_kv_cache \
--max_new_tokens 100 \
--do_sample \
--batch_size 2 \
--prompt "Hello world" "How are you?"