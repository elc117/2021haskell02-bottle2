-- Prática 02 de Haskell
-- Nome: Bento Borges Schirmer

temFebre :: Float -> Bool
temFebre = (>37.8)


comFebre :: [Float] -> [Float]
comFebre = filter temFebre

comFebre' :: [Float] -> [Float]
comFebre' = filter (\temperatura -> temperatura > 37.8)

itemize :: [String] -> [String]
itemize = map (\item -> "<li>" ++ item ++ "</li>")

-- Interface alterada
bigCircles :: Float -> [Float] -> [Float]
bigCircles a = (filter (>a) . map (\r -> r^2 * pi))

quarentena :: [(String, Float)] -> [(String, Float)]
quarentena = filter (\(_,temperatura) -> temFebre temperatura)

idadesEm :: [Int] -> Int -> [Int]
idadesEm anos_nascimento ano_atual = map (\ano_nascimento -> ano_atual - ano_nascimento) anos_nascimento

changeNames :: [String] -> [String]
changeNames = map (\name -> if head name == 'A' then "Super " ++ name else name)

onlyShorts :: [String] -> [String]
onlyShorts = filter ((<5) . length)
