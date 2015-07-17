import snownlp.snow as snow
import sys
import json

output = open('sentiments.output','a')

while(True):
    sentence = raw_input('')
    if sentence == '':
        continue
    elif sentence == 'EOF':
        break
    else:
        sentence = json.loads(sentence.decode('utf-8'))
        #li_score = json.dumps([snow.SnowNLP(sentence['text']).sentiments, sentence['id']])
        li_score = json.dumps([snow.SnowNLP(sentence[1]).sentiments, sentence[0]])
        output.write(li_score)
        output.write('\n')
        print li_score
