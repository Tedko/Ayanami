#!/bin/sh


sed -e 's!http\(s\)\{0,1\}://[^[:space:]]*!!g' output_trainingData.txt >output_trainingData_noURL.txt
echo 'Deleting all URLs...'
tr ' ' '\n'< output_trainingData_noURL.txt > output_trainingData_lined.txt
sed '/^$/d' output_trainingData_lined.txt > output_trainingData_pure.txt
echo 'Purifing Data...'
rm output_trainingData.txt 
rm output_trainingData_noURL.txt
rm output_trainingData_lined.txt 
mv  output_trainingData_pure.txt input.txt
echo 'Run node go.js for Chinese Porter Stemmer...'
node go.js
mv output.txt output_removeBlankLine.txt
sed '/^$/d' output_removeBlankLine.txt > output_pure.txt
rm output_removeBlankLine.txt
sed -n '/error/d' output_pure.txt
mv output_pure.txt output.txt
echo 'result is in the output.txt , Thx! :)'


