# TEDify

TEDify is an NLP model for real-time audience feedback (laughter and applause), trained on audience reactions from thousands of TED Talks.

## Demo (YouTube)

[![TEDify demo](http://img.youtube.com/vi/VbxxvNJfpQY/0.jpg)](https://www.youtube.com/watch?v=VbxxvNJfpQY "TEDify demo")

## Installation & Usage

After cloning the repository, optionally create a new virtual environment and install the required dependencies.
```
pip install -r requirements.txt
```
You'll need Google Cloud credentials in the form of a JSON file for the speech-to-text to function. Then, export the location of that file as an environment variable.
```
export GOOGLE_APPLICATION_CREDENTIALS="path/to/credentials.json"
```
At this point, you should be able to run TEDify:
```
python tedify.py
```
To decrease the verbosity, add the argument:
```
python tedify.py --noverbose
```
TEDify's NLP encodes tokens to integers to be passed into the Transformer. These encodings are found in `word_to_index.json`. To use a different set of Transformer and encodings, pass in the following parameters:
```
python tedify.py --encoding="path/to/encoding.json" --transformer="path/to/transformer"
```
Good luck with your TED Talks!

## Project structure

* `sounds/` is a directory containing audience sound effects
* `transformer/` contains the saved Transformer for text processing
* `README.md` is what you're looking at right now
* `play_audience_sounds.py` is a utility file for playing crowd audio
* `requirements.txt` is a list of required Python libraries
* `ted_scraped.txt` is a file containing 200 scraped TED Talks– note that the final Transformer is actually trained on the [TED Ultimate Dataset](https://www.kaggle.com/miguelcorraljr/ted-ultimate-dataset)
* `ted_scraper.py` is a Python script for scraping TED Talks using Selenium– see above note regarding training data
* `tedify.py` is the main file for running TEDify
* `tedify_training_pipeline.ipynb` is a Jupyter notebook for cleaning the dataset and training a Transformer
* `tedify_util.py` is a utility file for `tedify.py` that performs text cleaning and classification
* `word_to_index.json` is a JSON file containing mappings of tokens to indexes [1, 20001]