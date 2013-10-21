findnames
=========

Find all unique person names in a word processing document



**** Whoa now hold on here, this is a very initial cut, largely to make sure I can commit to github  


NOTE merge readme's


ideas

**** add a mock sentence reader

Check capitalized words 
Exclude start of sentence

Can a word distance check get us closer to matching first names?

This may really need a human in the loop for final id of the "real" name but how close can we get?


How to read sentences (as opposed to lines) from the word processing files, ungly
   use the msword api... lol... i got a million of them
   count periods
      tables and bad phrases break the period logic
      