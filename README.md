# CADEC for NLP
This repo converts the CADEC corpus into the train and test CoNLL representation described in [Recognizing Mentions of Adverse Drug Reaction in Social Media Using Knowledge-Infused Recurrent Models, Stanovsky, Gruhl, and Mendes, EACL 2017](https://gabrielstanovsky.github.io/assets/papers/eacl17a/paper.pdf).

## Prerequisites
0. Python (tested on python 3.6)
1. Install required packages:
```bash
pip install -r requirements.txt
```
2. Download the [CADEC corpus](https://doi.org/10.4225/08/570FB102BDAD2), and unpack it into the [data] folder.

## Creating the corpus

Run 

``` bash
bash ./scripts/create_corpus.sh
```

This should create the files `train.conll` and `test.conll` in the data folder.


## File format

Each row annotates a single word (in the first column) and
BIO tags in tab separated columns, in the following order, starting
from the second column:

1. **Adverse Drug Reaction**, an unwanted reaction which according to the text is
clearly associated with taking the drug, e.g, *acute stomach pain*.
2. **Disease**, the reason for taking the drug, e.g., *insomnia* or *aggression*.
3. **Drug**,  names of medicine or drug, e.g., *Diclofenac* or “Aspirin”.
4. **Symptom**, manifestations of the disease, e.g.,  *trouble sleeping* or *constantly angry*.
5. **Finding**, a clinical finding that does not pertain to any of the above categories.## File format

