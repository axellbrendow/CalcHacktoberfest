{num1, ""} = Float.parse(
  String.trim(IO.gets("Type fisrt number: "))
)

operator = String.trim(IO.gets("Type operator (+-*/): "))

{num2, ""} = Float.parse(
  String.trim(IO.gets("Type second number: "))
)

result = case operator do
  "+" -> num1 + num2
  "-" -> num1 - num2
  "*" -> num1 * num2
  "/" -> num1 / num2
  _ -> -1
end

IO.puts("#{num1} #{operator} #{num2} = #{result}")
