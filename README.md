# CADEC for NLP
This repo converts the CADEC corpus into the train and test CoNLL representation described in [Recognizing Mentions of Adverse Drug Reaction in Social Media Using Knowledge-Infused Recurrent Models](https://gabrielstanovsky.github.io/assets/papers/eacl17a/paper.pdf) (Stanovsky, Gruhl, and Mendes, EACL 2017).

## Prerequisites

* Python (tested on python 3.6)
* Install required packages:
```bash
pip install -r requirements.txt
```
* Download the [CADEC corpus](https://doi.org/10.4225/08/570FB102BDAD2) and unpack it into the [data](data) folder.

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
5. **Finding**, a clinical finding that does not pertain to any of the above categories.

## Citing

If you found this useful, please cite:

```bibtex
@InProceedings{stanovsky2017recognizing,
author={Stanovsky, Gabriel and Gruhl, Daniel and Mendes, Pablo N.},
title ={Recognizing Mentions of Adverse Drug Reaction in Social Media Using Knowledge-Infused Recurrent Models},
booktitle = {Proceedings of the 2017 Conference of the European Chapter of the Association
for Computational Linguistics},
month     = {April},
year      = {2017},
address   = {Valencia, Spain},
publisher = {Association for Computational Linguistics},
}

@article{karimi2015cadec,
  title={Cadec: A corpus of adverse drug event annotations},
  author={Karimi, Sarvnaz and Metke-Jimenez, Alejandro and Kemp, Madonna and Wang, Chen},
  journal={Journal of biomedical informatics},
  volume={55},
  pages={73--81},
  year={2015},
  publisher={Elsevier}
}
```
