#!/bin/sh


sed -e 's!http\(s\)\{0,1\}://[^[:space:]]*!!g' output_trainingData.txt >output_trainingData_noURL.txt
echo 'Deleting all URLs...'
tr ' ' '\n'< output_trainingData_noURL.txt > output_trainingData_lined.txt
sed '/^$/d' output_trainingData_lined.txt > output_trainingData_pure.txt
echo 'Purifing Data...'
#rm output_trainingData.txt 
rm output_trainingData_noURL.txt
rm output_trainingData_lined.txt 
mv  output_trainingData_pure.txt input.txt
echo 'Run node go.js for Chinese Porter Stemmer...'
node go.js
sed '/^error/d' output.txt >output_pure.txt
sed '/^$/d' output_pure.txt > output_removeBlankLine.txt
rm output_pure.txt
mv output_removeBlankLine.txt output_ProcessSameLine.txt
sort output_ProcessSameLine.txt|uniq -c  > output_withSameLineNumber.txt
sort output_withSameLineNumber.txt > output_final.txt
rm output_withSameLineNumber.txt

echo ' Chinese Porter Stemmer result is in the output_final.txt'



