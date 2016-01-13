print("Wie heeft de computer uitgevonden?")
answer = string.lower(io.read())
  if answer == 'alen turing' then
    print('Dat je dat weet. Echt heel goed gedaan.')
  else 
    print('Dat antwoord is niet goed. Probeer het nog eens.')
    answer = string.lower(io.read())
  end
  