# WAIDWML?

Collection of stupid scripts or "What Am I Doing With My Life?"

## seds.sh 

Search wordlist for words that works as a sed substitution command and the words that gets
changed into words that exists in that list.

For example the word "stoutest" would change "ou" to "es", and transform the word "sorcerous" into "sorceress".

````
> echo sorcerous | sed stoutest
sorceress
```
