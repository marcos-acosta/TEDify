import simpleaudio as sa

laughtrack = sa.WaveObject.from_wave_file('sounds/laughtrack.wav')
applause = sa.WaveObject.from_wave_file('sounds/applause.wav')

def play_laughtrack():
  play_obj = laughtrack.play()

def play_applause():
  play_obj = applause.play()