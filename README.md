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

## eliza.cf

Sendmail wishing you all good mental health. Run it with ````sendmail -bt -Celiza.cf````, start every sentence with "eliza" followed by your message. 

````
> sendmail -bt -Celiza.cf
ADDRESS TEST MODE (ruleset 3 NOT automatically invoked)
Enter <ruleset> <address>
> eliza You are not very helpful.
eliza              input: You are not very helpful .
e2                 input: not very helpful .
e2               returns: not very helpful ?
e1                 input: not very helpful ?
e1               returns: not very helpful ?
eliza            returns: What makes you think I am not very helpful ?
````

