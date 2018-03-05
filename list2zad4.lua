t = {'poniedzialek', 'wtorek', 'sroda', 'czwartek', 'piatek', 'sobota', 'niedziela'}
N = 7
M = 24  
grafik = {}

for i = 1, N do
  grafik[i] = {}
  
  for j = 1, M do
    grafik[i][j] = nil
  end
end


local function pokaz_grafik()
  for i = 1, N do
    print('------------------------------', t[i], '------------------------------')
    
    for j = 1, M do
      if not (grafik[i][j] == nil) then
        print(j, grafik[i][j])
      else
        print(j)
      end
    end
  end
end


local function kalendarz(dzien, gp, gk, wydarzenie)
  d = 1
  while t do
    if dzien == t[d] then
      break
    end
    
    d = d + 1
  end
  
  status = false
  for j = gp + 1, gk do
    if grafik[d][j] == nil then
      status = true
    else
      status = false
      return status
    end
  end
    
  for j = gp + 1, gk do
    grafik[d][j] = wydarzenie
  end
  
  return status
end


status = kalendarz('poniedzialek', 14, 16, 'Kurs jezyka LUA - cwiczenia')
print(status)
status = kalendarz('poniedzialek', 14, 16, 'Algorytmy i struktury danych M') --
print(status)
kalendarz('wtorek', 8, 10, 'Bazy danych - wyklad')
kalendarz('wtorek', 10, 12, 'Bazy danych - cwiczenia')
kalendarz('wtorek', 12, 14, 'Wstep do rachunku lambda - wyklad')
kalendarz('wtorek', 14, 16, 'Wstep do rachunku lambda - cwiczenia')
kalendarz('wtorek', 16, 18, 'Kurs: Programowanie w C++ - cwiczenia')
kalendarz('wtorek', 16, 18, 'Kurs jezyka LUA - wyklad') --
kalendarz('sroda', 8, 10, 'Systemy rozproszone 2017 - wyklad')
kalendarz('sroda', 10, 12, 'Algorytmy i struktury danych M')
kalendarz('sroda', 12, 14, 'Systemy rozproszone 2017 - cwiczenia')
--kalendarz('sroda', 13, 15, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
--kalendarz('sroda', 14, 15, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy')
--kalendarz('sroda', 14, 16, 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz')
--kalendarz('sroda', 14, 17, 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv')
kalendarz('sroda', 16, 18, 'Kurs: Programowanie w C++ - cwiczenia')
kalendarz('czwartek', 8, 10, 'Pewne algorytmy symboliczne - wyklad')
kalendarz('czwartek', 10, 12, 'Pewne algorytmy symboliczne - cwiczenia')
kalendarz('czwartek', 10, 12, 'Kompresja danych - wyklad') --
kalendarz('czwartek', 12, 14, 'Programowanie obiektowe - wyklad')
kalendarz('czwartek', 16, 18, 'Rachunek prawdopodobieństwa i statystyka - wyklad')
kalendarz('piatek', 8, 10, 'Programowanie obiektowe - cwiczenia')
kalendarz('piatek', 10, 12, 'Kompresja danych - cwiczenia')

pokaz_grafik()