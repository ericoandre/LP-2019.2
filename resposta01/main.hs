fibonacci :: Int -> Int
fibonacci x | x == 0 = 0
            | x == 1 = 1
            | x > 1 = fibonacci(x-1) + fibonacci(x-2)
            | x < 0 = error "Não existe fibonacci de número negativo."

fatorial :: Int -> Int
fatorial x  | x == 0 = 1
            | x > 0 = x * fatorial(x-1)
            | x < 0 = error "Não existe fatorial de número negativo."

fibonacciList :: Int -> [Int]
fibonacciList x | x < 0 = error "Não existe lista fibonacci de número negativo."
                | otherwise = map fibonacci [0..(x-1)]

remover :: Int -> [Int] -> [Int]
remover n [] = []
remover n l | n < 1 = error "Não é possível remover de uma posição menor que 1"
            | length l < n = error "Valor informado é maior que o tamanho da lista"
            | otherwise = take (n-1) l ++ drop n l

inserir :: Int -> Int -> [Int] -> [Int]
inserir x n [] = []
inserir x n l | n < 1 = error "Não é possível inserir em uma posição menor que 1"
            | length l + 1 < n = error "Valor informado é maior que o tamanho da lista"
            | otherwise = take (n-1) l ++ [x] ++ drop (n-1) l

odds :: [Int] -> [Int]
odds x  | length x == 0 = []
        | otherwise = filter odd x

evens :: [Int] -> [Int]
evens x | length x == 0 = []
        | otherwise = filter even x
        
quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = quicksort [a | a <- xs, a <= x]  
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted

separarImparPar :: [Int] -> ([Int], [Int])
separarImparPar x = (quicksort (odds x), quicksort (evens x))

ordenarImparPar :: [Int] -> [Int]
ordenarImparPar x = quicksort (odds x) ++ quicksort (evens x)

main = do
  print("a) FIBONACCI")
  print(fibonacci(0))
  print(fibonacci(1))
  print(fibonacci(2))
  
  print("b) FATORIAL")
  print(fatorial(0))
  print(fatorial(1))
  print(fatorial(2))

  print("c) LISTA FIBONACCI")
  print(fibonacciList(10))
  
  print("d) REMOVER")
  print(remover 2 [])
  print(remover 2 [0..10])
  
  print("e) INSERIR")
  print(inserir 700 9 [1..10])
  
  print("f) SEPARAR IMPAR PAR")
  print(separarImparPar [1..10])
  
  print("g) ORDENAR IMPAR PAR")
  print(ordenarImparPar [1..10])
  