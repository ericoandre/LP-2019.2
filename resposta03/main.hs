stringToList :: String -> [String]
stringToList []  = []
stringToList xxs@(x:xs)  | x == '\n' = stringToList xs
                    | otherwise = ys : stringToList rest
                      where (ys, rest) = break (== '\n') xxs

reverseList :: [a] -> [a]  
reverseList [] = []  
reverseList (x:xs) = reverseList xs ++ [x]

inverterPoema :: String -> [String]
inverterPoema x = reverseList . stringToList $ x

printListLines :: [String] -> IO()
printListLines [] = return ()
printListLines (x:xs) = do  putStrLn x
                            printListLines xs

main = do
  printListLines(inverterPoema "Nao te amo mais.\nEstarei mentindo dizendo que\nAinda te quero como sempre quis.\nTenho certeza que\nNada foi em vao.\nSinto dentro de mim que\nVoce nao significa nada.\nNao poderia dizer jamais que\nAlimento um grande amor.\nSinto cada vez mais que\nJa te esqueci!\nE jamais usarei a frase:\nEU TE AMO!\nSinto, mas tenho que dizer a verdade\nE tarde demais...")