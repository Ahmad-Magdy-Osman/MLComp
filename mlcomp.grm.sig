signature mlcomp_TOKENS =
sig
type ('a,'b) token
type svalue
val Exclaim:  'a * 'a -> (svalue,'a) token
val SetEqual:  'a * 'a -> (svalue,'a) token
val Id: (string) *  'a * 'a -> (svalue,'a) token
val False:  'a * 'a -> (svalue,'a) token
val True:  'a * 'a -> (svalue,'a) token
val Int: (string) *  'a * 'a -> (svalue,'a) token
val Char: (string) *  'a * 'a -> (svalue,'a) token
val String: (string) *  'a * 'a -> (svalue,'a) token
val Rec:  'a * 'a -> (svalue,'a) token
val And:  'a * 'a -> (svalue,'a) token
val Raise:  'a * 'a -> (svalue,'a) token
val Of:  'a * 'a -> (svalue,'a) token
val Case:  'a * 'a -> (svalue,'a) token
val Handle:  'a * 'a -> (svalue,'a) token
val Do:  'a * 'a -> (svalue,'a) token
val While:  'a * 'a -> (svalue,'a) token
val Fn:  'a * 'a -> (svalue,'a) token
val Else:  'a * 'a -> (svalue,'a) token
val Then:  'a * 'a -> (svalue,'a) token
val If:  'a * 'a -> (svalue,'a) token
val End:  'a * 'a -> (svalue,'a) token
val In:  'a * 'a -> (svalue,'a) token
val Val:  'a * 'a -> (svalue,'a) token
val Let:  'a * 'a -> (svalue,'a) token
val As:  'a * 'a -> (svalue,'a) token
val Fun:  'a * 'a -> (svalue,'a) token
val RBracket:  'a * 'a -> (svalue,'a) token
val LBracket:  'a * 'a -> (svalue,'a) token
val VerticalBar:  'a * 'a -> (svalue,'a) token
val Equals:  'a * 'a -> (svalue,'a) token
val Arrow:  'a * 'a -> (svalue,'a) token
val Underscore:  'a * 'a -> (svalue,'a) token
val Semicolon:  'a * 'a -> (svalue,'a) token
val Tilde:  'a * 'a -> (svalue,'a) token
val Comma:  'a * 'a -> (svalue,'a) token
val ListCons:  'a * 'a -> (svalue,'a) token
val Append:  'a * 'a -> (svalue,'a) token
val NotEqual:  'a * 'a -> (svalue,'a) token
val LessEqual:  'a * 'a -> (svalue,'a) token
val GreaterEqual:  'a * 'a -> (svalue,'a) token
val Less:  'a * 'a -> (svalue,'a) token
val Greater:  'a * 'a -> (svalue,'a) token
val Mod:  'a * 'a -> (svalue,'a) token
val Div:  'a * 'a -> (svalue,'a) token
val Times:  'a * 'a -> (svalue,'a) token
val Minus:  'a * 'a -> (svalue,'a) token
val Plus:  'a * 'a -> (svalue,'a) token
val RParen:  'a * 'a -> (svalue,'a) token
val LParen:  'a * 'a -> (svalue,'a) token
val EOF:  'a * 'a -> (svalue,'a) token
end
signature mlcomp_LRVALS=
sig
structure Tokens : mlcomp_TOKENS
structure ParserData:PARSER_DATA
sharing type ParserData.Token.token = Tokens.token
sharing type ParserData.svalue = Tokens.svalue
end
