BeginPackage["MathOka`"]

(*** Documents ***)

MOVersion::usage = "Version of MathOak."

MOFromDigits::usage = "Like FromDigits, but take a String as its argument and treat the String as List of digits and symbols."

MOSquareQ::usage = "Test if an integer is a square number."

(*** Implementations ***)

Begin["`Private`"]

MOVersion = "0.0.1"

MOFromDigits[s_String, b_Integer:10] := FromDigits[ToExpression /@ StringSplit[s, ""], b] // Simplify

MOSquareQ[x_] := Element[Sqrt[x], Integers]

End[]

EndPackage[]
