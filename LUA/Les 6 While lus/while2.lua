question = false

while question == false do
  print("Wie heeft de computer uit gevonden")
  answer = string.lower(io.read())
    if answer == 'alan turing' then
      print('Dat je dat weet. Echt heel goed gedaan.')
      question = true
    else
      print('Dat antwoord is niet goed. Probeer het nog eens.')
    end
  end