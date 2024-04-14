BeginPackage["MathOka`"]

(*** Documents ***)
MOVersion::usage = "Version of MathOak."

MOFromDigits::usage = "Like FromDigits, but take a String as its argument and treat the String as List of digits and symbols."


(*** Implementations ***)

Begin["`Private`"]

MOVersion = "0.0.1"

MOFromDigits[s_String, b_Integer:10] := FromDigits[ToExpression /@ StringSplit[s, ""], b] // Simplify

End[]

EndPackage[]
