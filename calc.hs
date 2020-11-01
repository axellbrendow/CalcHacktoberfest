import Text.Printf

operate :: Float -> String -> Float -> Float

operate num1 operator num2 = case operator of
  "+" -> num1 + num2
  "-" -> num1 - num2
  "*" -> num1 * num2
  "/" -> num1 / num2
  _ -> -1

main = do  
  putStrLn "Type fisrt number:"
  linenum1 <- getLine
  
  putStrLn "Type operator (+-*/):"
  operator <- getLine
  operator <- getLine
  
  putStrLn "Type second number:"
  linenum2 <- getLine
  linenum2 <- getLine

  let num1 = read linenum1 :: Float
  let num2 = read linenum2 :: Float

  let result = operate num1 operator num2

  printf "%s %s %s = %f\n" linenum1 operator linenum2 result
