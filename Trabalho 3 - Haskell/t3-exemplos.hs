-- 	Funcoes de alta ordem Any e All
-- Any = retorna True se pelo menos um item da lista cumpre a condicao. Exemplo:
-- any odd [1,2,3,4,5]
-- A saida sera True, pois pelo menos um dos elementos da lista eh impar(funcao odd retorna True se o numero informado eh impar).
--Outro exemplo:
exemploAny :: Int -> [Int] -> Bool
exemploAny num lis = any (== num) lis
-- Se informarmos exemploAny 5 [3,4,5,6,7] a saida sera True, pois um dos elementos da lista eh igual ao numero digitado.
-- Se informarmos exemploAny 5 [3,4,4,6,7] a saida sera False, pois nenhum dos elementos da lista eh igual ao numero digitado.

-- All = retorna True se todos os itens da lista cumprem a condicao. Exemplo:
-- all even [1,2,3,4,5]
-- A saida sera False, pois nem todos os elementos da lista sao pares(funcao even retorna True se o numero informado eh par).
--Outro exemplo:
exemploAll :: Int -> [Int] -> Bool
exemploAll num lis = all (> num) lis
-- Se informarmos exemploAll 3 [5,6,7,8,9] a saida sera True, pois todos os elementos da lista sao maiores que o numero digitado.
-- Se informarmos exemploAll 3 [1,3,5,7,9] a saida sera False, pois nem todos os elementos da lista sao maiores que o numero digitado.

-- 	Operador '$'
-- O operador '$' serve para evitar o uso de parenteses. Tudo que aparecer depois dele vai prevalecer sobre qualquer coisa que venha antes. Exemplo:
-- funcSoma (map(+) lis)
-- Se quisermos retirar alguns parenteses do exemplo acima, devemos usar $. A linha a seguir fara a mesma coisa que o exemplo anterior:
-- funcSoma $ map(+) lis
-- Outro exemplo:
-- (sum (zipWith (*) digitos1 [10,9..2]))
-- $ sum $ zipWith (*) digitos1 [10,9..2]

-- 	Composicao de Funcoes (Operador '.')
-- Eh uma maneira de "compor" duas funcoes em uma unica funcao, colocando o resultado de uma funcao na entrada de outra, criando uma funcao inteiramente nova.Exemplo:
-- (negate . abs) (-5)
-- A saida sera -5, pois aplica abs(funcao que retorna o valor absoluto do numero) e aplica negate(funcao que troca o sinal do numero) no resultado de abs(nesse caso, 5).
-- Outro exemplo:
-- odd :: Int -> Bool
-- not :: Bool -> Bool
-- Digamos que voce queira definir sua propria funcao ehPar :: Int -> Bool usando as duas acima. Podemos defini-la usando composicao de funcoes:
ehPar :: Int -> Bool
ehPar = not . odd
-- Se informarmos ehPar 2 a saida sera True, pois a funcao odd(funcao que retorna True se o numero informado eh impar)retorna False e, ao aplicar False na entrada da funcao not(funcao booleana not), a saida sera True.
-- Se informarmos ehPar 3 a saida sera False, pois a funcao odd(funcao que retorna True se o numero informado eh impar)retorna True e, ao aplicar True na entrada da funcao not(funcao booleana not), a saida sera False.