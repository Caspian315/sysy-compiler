%option noyywrap
%option nounput
%option noinput

%{
#include <cstdlib>
#include <string>

#include "sysy.tab.hpp"

using namespace std;

%}

//空白符和注释
WhiteSpace [ \n\t\r]*
LineComment "//".*

Identifier [a-zA-Z_][a-zA-Z0-9_]*

Decimal [1-9][0-9]*
Octal 0[0-7]*
Hexadecimal 0[xX][0-9a-fA-F]*

%%



%%
