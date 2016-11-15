#!/bin/sh

# Search wordlist for words that works as a sed substitution command and the words that gets
# changed into words that exists in that list.

LANG=C

words=/usr/share/dict/words

for s in $(cat $words | grep -P '^s(.)((?!\1).)+\1((?!\1).)*\1[gim]*$')
do
        echo "### $s"
        (cat $words | sed 's/^/~ /' ; grep $(echo $s | sed 's/^s\(.\)\(.*\)\1.*\1$/\2/') $words | grep '^[a-z]*$' | sed "h;$s;x;p;x" | awk '{printf $0" ";getline;print}' ) | sort -k 2 | uniq -cf 1 | grep -v '^\s*1 ' | awk '{printf("%-50s %-25s\n", "echo "$2" | sed '$s'", "# "$3)}'
done
