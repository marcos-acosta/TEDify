from nltk.tokenize import sent_tokenize
from nltk import word_tokenize
from tensorflow.keras.models import load_model
from tensorflow import keras
import collections
import numpy as np
import json
import re

model = load_model('transformer_2')
print('[LAUGHTRACK] Transformer loaded!')

with open('word_to_index.json') as f:
  word_to_index = json.load(f)
index_to_word = word_to_index.keys()

NEXT = 'NNNNN'
APPLAUSE = 'AAAAA'
LAUGHTER = 'LLLLL'
special = [APPLAUSE, LAUGHTER]
maxlen = 200

def split_sentences(txt):
  ''' Tokenize lines into sentences and return those sentences '''
  new_txt = []
  for line in txt:
    sentences = sent_tokenize(line)
    new_txt += sentences
  return new_txt

def encode_sentence(text):
  tokenized = word_tokenize(text.lower())
  return [word_to_index[word] for word in tokenized if word in word_to_index]

def encode_sentences(sentences):
  return [encode_sentence(sentence) for sentence in sentences]

def predict(encoding):
  padded = keras.preprocessing.sequence.pad_sequences(encoding, maxlen=maxlen)
  probs = model.predict(padded)
  return probs[0]