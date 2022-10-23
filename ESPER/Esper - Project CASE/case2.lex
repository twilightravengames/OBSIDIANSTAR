%{
#include <iostream>
using namespace std;
%}

%%
[ \t\n]         ;
“empty”		{ return EMPTYSTRING }
“%!”			{ return DOCUMENTATION }
“import”		{ return IMPORT }
“namespace”		{ return NAMESPACE }
“??”			{ return DOUBLEQUESTIONOPERATOR }
“`”			{ return BACKTICK }
“‘”			{ return FONTTICK }
“\["		{ return LBRACKET }
“\]”		{ return RBRACKET }
‘.’			{ return PERIOD }
“+”			{ return PLUS }
“-“			{ return MINUS }
“=“			{ return ASSIGNS }
“~”			{ return SHALLOWCOPY }
“/“			{ return DIVISION }
“*”			{ return MULTIPLY }
“mod”			{ return MOD }
“#”			{ return HASHTAG}
“div”			{ return INTEGERDIVISION }
“rem”			{ return REMAINDER }
“<<“			{ return SHIFTLEFT }
“>>”			{ return SHIFTRIGHT }
“+=“			{ return ADDASISGN }
“-=“			{ return MINUSASSIGN }
“/=“			{ return DIVASSIGN }
“*=“			{ return MULTASSIGN }
“!”			{ return FACTORIAL }
“^”			{ return EXPONENTIAL }
“%”			{ return PERCENT }
“++”			{ return INCREMENT }
“—“			{ return DECREMENT }
“>”			{ return GT }
“<“			{ return LT }
“>=“			{ return GTEQUALS }
“<=“			{ return LTEQUALS }
“<>”			{ return NOTEQUAL }
[0-9]+			{ return NUMERAL }
[a-zA-Z_][a-zA-Z0-9_]*	{return IDENTIFIER }		
[a-zA-Z_]		{ return LETTERS }
[A-Z_]*			{ return CAPITALS }
[a-z_]*					{ return LOWERCASE} 
[a-zA-Za-zA-Z0-9_]+		{ return CAMELCASEALPHABET }
[a-zA-Z_0-9]+		{ return STRING }
[q-zA-Z]+			{ return LETTERS }
[a-zA-Z0-9]+		{ return VARIABLENAME }
[a-zA-Z0-9]+		{ return TYPENAME } 
“::”			{ return TYPEOPERATOR }
“@“ 			{ return ATOPERATOR }
“(“			{ return LPAREN }
“)”			{ return RPAREN }
“==>”			{ return RIGHTARROW }
“<==“			{ return LEFTARROW }
“->”			{ return SMALLARROW }
“<-“			{ return SMALLLEFTARROW
“true”			{ return TRUE }
“false”			{ return FALSE }
“not”			{ return NOT }
“istrue”		{ return ISTRUE }
“isfalse”		{ return ISFALSE }
“and”			{ return AND }
“xor”			{ return XOR }
“or”			{ return OR }
“notor”			{ return NOTOR }
“notand” 		{ return NOTAND }
“like”			{ return LIKE }
“&”			{ return AMPERSANDOP }
“|”			{ return BITWISEOR }
“\|”			{ return BITWISEXOR }
“~~”			{ return BITWISENOT }
“==“			{ return BOOLEANEQUALS }
“:”			{ return COLONOPERATOR }
“floor”			{ return FLOOR }
“ceiling” 		{ return CEILING }
“round”		{ return ROUND }
“random”		{ return RANDOM }
“also”			{ return ALSO }
“length”		{ return LENGTH }
“isletter”		{ return ISLETTER }
“isdigit”		{ return ISDIGIT }
“iswhitespace”	{ return ISWHITESPACE }
“isuppercase”  	{ return ISUPPERCASE }
“islowercase”		{ return ISLOWERCASE }
“touppercase”	{ return TOUPPERCASE }
“tolowercase” 	{ return TOLOWERCASE }
“public”		{ return PUBLIC }
“protected”		{ return PROTECTED }
“internal”		{ return INTERNAL }
“private”		{ return PRIVATE }
“package”		{ return PACKAGE }
“friend”		{ return FRIEND }
“trust” 			{ return TRUST }
“function” 		{ return FUNCTION }
“virtual”		{ return VIRTUAL }
“const”		{ return CONST }
“flux”			{ return FLUX }
“MVC”			{ return MVC }
“MVCBINDING”	{ return MVCBINDING }
“@controller”		{ return CONTROLLER }
“@model”		{ return MODEL }
“@view”		{ return VIEW }
“target@“		{ return TARGET }
“<T>””			{ return TEMPLATEOPERATOR }
“deep”			{ return DEEP }
“need”			{ return NEED }
“_”			{ return WILDCARD }
“return”		{ return RETURNSTMT }
“synchronized”	{ return SYNCHRONIZED }
“lock”			{ return LOCK }
“spinlock”		{ return SPINLOCK }
“semaphore”		{ return SEMAPHORE }
“monitor”		{ return MONITOR }
“operator”		{ return OPERATOR }
“&=“			{ return STRINGCOPYBYREF }
“class”			{ return CLASS }
“endclass”		{ return ENDLESS }
“throws”		{ return THROWS }
“{“			{ return LBRACE }
“}”			{ return RBRACE }
“stream”		{ return STREAM }
“volatile”		{ return VOLATILE }
“$”			{ return VARIABLEOPERATOR }
“new”			{ return NEW }
“<>()”			{ return GENERIC }
“atom”			{ return ATOM }
“constructor”		{ return CONSTRUCTOR }
“application”		{ return APPLICATION }
“.app”			{ return APPOPERATOR }
“this”			{ return THIS }
“$scope”		{ return SCOPEOPERATOR }
“for”			{ return FOR }
“;”			{ return SEMICOLON }
“,”			{ return COMMA }
“@release”		{ return RELEASE }
“@retain”		{ return RETAIN }
“@autorelease”	{ return AUTORELEASE }
“.getEntityPool”	{ return GETENTITYPOOL }
“.run”			{ return POOLRUN }
“.fromString”		{ return FROMSTRING }
“.toStirng”		{ return TOSTRING }
“.convert”		{ return CONVERT }
“print bug”		{ return PRINTBUG }
“try”			{ return TRY }
“catch”		{ return CATCH }
“finally”		{ return FINALLY }
“await”		{ return AWAIT }
“last”			{ return LAST }
“autofill”		{ return AUTOFILL }
“tag”			{ return TAG }
“frozen”		{ return FROZEN }
“thaw”			{ return THAW }
“inline”		{ return INLINE }
“byte code”		{ return BYTECODE }
“null”			{ return NULL }
'as”			{ return AS }
“global”		{ return GLOBAL }
“wait”			{ return WAIT }
“success”		{ return SUCCESS }
“@texts”		{ return TEXTS }
“auto”			{ return AUTO }
“static”		{ return STATIC }
“sealed”		{ return SEALED }
“assert”		{ return ASSERT }
“final”			{ return FINAL }
“( c )”			{ return CONCATOPERATOR }
“( m )”			{ return ANTICONCATOPERATOR }
“struct”		{ return STRICT }
“union”		{ return UNION }
“requires”		{ return REQUIRES }
“satisfies”		{ return SATISFIES }
“sizeof”		{ return SIZEOF }

“short”			{ return SHORT }
“char”			{ return CHAR }
“long”			{ return LONG }
“boolean”		{ return BOOLEAN }
“integer”		{ return INTEGER }
“double”		{ return DOUBLE }
“float”			{ return FLOAT }
“fixed”			{ return FIXED }
“uint”			{ return UNSIGNEDINT }
“ushort”		{ return UNSIGNEDSHORT }
“ulong”		{ return UNSIGNEDLONG }
“ufloat”		{ return UNSIGNEDFLOAT }
“register”		{ return REGISTER }

“enum”		{ return ENUM }
“extern””		{ return EXTERN }
“assigner”		{ return ASSIGNER }
“continue”		{ return CONTINUE }
“typedef”		{ return TYPEDEF }
“exp”			{ return EXP }
“abs”			{ return ABS }
“if”			{ return IF }
“else”			{ return ELSE }
“else if”		{ return ELSEIF }
“loop” 			{ return NOOP }
“residue”		{ return RESIDUE }
“reside”		{ return RESIDE }
“leap”			{ return LEAP
 }
“iterator”		{ return ITERATOR }
“in”			{ return IN }
“range”		{ return RANGE }
“foreach”		{ return FOREACH }
“do”			{ return DO }
“while”			{ return WHILE }
“until”			{ return UNTIL }
“where”		{ return WHERE }
“short while”		{ return SHORTWHILE }
“shortfor”		{ return SHORTFOR }
“{{“			{ return DOUBLELEFTBRACE }
“}}”			{ return DOUBLERIGHTBRACE }
“switch”		{ return SWITCH }
“case”			{ return CASE }
“break”		{ return BREAK }
“exit”			{ return EXIT }
“pass”			{ return PASS }
“branch”		{ return BRANCH }
“jump”			{ return JUMP }
“implements”		{ return IMPLEMENTS }
“extends”		{ return EXTENDS }
“interface		{ return INTERFACE }
“abstract class”	{ return ABSTRACTCLASS }
“abstract”		{ return ABSTRACT }
“super”		{ return SUPER }
“is”			{ return ISOPERATOR }
“isnot”			{ return ISNOTOPERATOR }
“isnothing		{ return ISNOTHINGOPERATOR }

“inclusion”		{ return INCLUSION }
“<?>”			{ return REFLECTION }
“<[]>”			{ return ARRAYTYPEOPERATOR }
“<[][]>”			{ return DOUBLEARRAYTYPEOPERATOR }
“.get”			{ return GETPROPERTY }
“.set”			{ return SETPROPERTY }
“base”			{ return BASE }
“shall”			{ return SHALL }
“extend method”	{ return EXTENDMETHOD }
“caller”		{ return CALLER }
“ret”			{ return RET }
“procedure”		{ return PROCEDURE }
“.pointer”		{ return POINTEROPERATOR }
“operator”		{ return OPERATOR }
“callbyreaction”	{ return CALLBYREACTION }
“car”			{ return CAR }
“car”			{ return CDR }
“promise”		{ return PROMISE }
“futures”		{ return FUTURES }
“base”			{ return BASE }
“tail”			{ return TAIL }
“tie”			{ return TIEOPERATOR }
“like”			{ return LIKEOPERATOR }


“collection”		{ return COLLECTION }
“hashtable”		{ return HASHTABLE }
“set”			{ return SET }
“array”			{ return ARRAY }
“arraylist”		{ return ARRAYLIST }
“linkedlist”		{ return LINKEDLIST }
“doublylinkedlist”	{ return DOUBLYLINKEDLIST }
“doublylinkedarraylist”	{ return DOUBLYLINKEDARRAYLIST }
“vector”		{ return VECTOR }
“map”			{ return MAP }
“multi map”		{ return MULTIMAP }
“string”		{ return STRING }
“object”		{ return OBJECT }
“list”			{ return LIST }
“binarytree” 		{ return BTREE }
’”n-arytree”		{ return NARYTREE }
“trie-tree”		{ return TRIETREE }
“redblacktree”	{ return REDBLACKTREE }
“splaytree”		{ return SPLAYTREE }
“AVLtree”		{ return AVLTREE }
“graph”		{ return GRAPH }
“directedgraph”	{ return DIRECTEDGRAPH }
“singledirectiongraph”	{ return “SINGLEDIRECTIONGRAPH” }
“stack”		{ return STACK }
“queue”		{ return QUEUE }
“circularqueue”	{ return CIRCULARQUEUE }
“circularlist”		{ return CIRCULARLIST } 
“endless”		{ return ENCLASS}



“bubblesort”		{ return BUBBLESORT }
“quicksort”		{ return QUICKSORT }
“mergesort”		{ return MERGESORT }
“tree traversal”	{ return TREETRAVERSAL }
“bfs-tree”		{ return BFS-TREE }
“dfs-tree”		{ return DFS-TREE }
“bfs-graph”		{ return BFS-GRAPH }
“dfs-graph”		{ return DFS-GRAPH }
“dijkstra”		{ return DIJKSTRA }
“astar”			{ return ASTAR }


/** constants **/
[a-z]+			{ return LETTERS }
[A-Z]+			{ return CAPITALS }

%%
int main(int argc, char** argv)
{
    yylex();
    return 0;
}

