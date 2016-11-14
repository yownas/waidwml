#!/bin/sh

# Search wordlist for words that works as a sed substitution command and the words that gets
# changed into words that exists in that list.

words=/usr/share/dict/words

for s in $(grep '^[a-z]*$' $words | grep -P '^s(.)((?!\1).)+\1((?!\1).)*\1$')
do
        echo "### $s"
        (grep '^[a-z]*$' $words | sed 's/^/~ /' ; grep $(echo $s | sed 's/^s\(.\)\(.*\)\1.*\1$/\2/') $words | grep '^[a-z]*$' | sed "h;$s;x;p;x" | awk '{printf $0" ";getline;print}' ) | sort -k 2 | uniq -cf 1 | grep '^\s*2' | awk '{print $2" -> "$3}' | sed "s/^/$s /"
done
