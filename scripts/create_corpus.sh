#!/bin/bash
# Usage:
#   create_corpus.sh
# Creates the corpus using the encoded files.
set -e
python src/decode_dataset.py --in=./data/train.encoded.conll  --out=./data/train.conll
python src/decode_dataset.py --in=./data/test.encoded.conll  --out=./data/test.conll
echo "DONE -- files created: data/train.conll, data/test.conll"
