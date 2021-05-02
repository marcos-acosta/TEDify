# TEDify

Explanation

## Installation & Usage

After cloning the repository, optionally create a new virtual environment and install the required dependencies.
```
pip install -r requirements.txt
```
You'll need Google Cloud credentials in the form of a JSON file for the speech-to-text to function. Then, export the location of that file as an environment variable.
```
export GOOGLE_APPLICATION_CREDENTIALS="<path/to/credentials.json>"
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