import stanza
import json


class DeProcessor():
    nlp = stanza.Pipeline('de')

    @staticmethod
    def process_sentence(sentence):
        return json.dumps(DeProcessor.nlp(sentence).to_dict())
