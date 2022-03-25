package fr.usmb.m1isc.compilation.simple;
import java_cup.runtime.Symbol;

%%

%class ExpressionsArithmetiquesLexer
%unicode
%line
%column

%cupsym ExpressionsArithmetiquesParserSym
%cup

// Code a ajouter a la classe generee
%{

%}

// Definitions regulieres
nombre = [0-9]+
espace = \s
plus = "+"
/*moins = "-"
fois = "*"
div = "/"*/
fin = ";"

%%

// Regles lexicales
{nombre} {return new Symbol(ExpressionsArithmetiquesParserSym.NOMBRE);}
{espace}+ {/* Rien a faire */}
{plus} {return new Symbol(ExpressionsArithmetiquesParserSym.PLUS);}
{fin} {return new Symbol(ExpressionsArithmetiquesParserSym.FIN);}
. {return new Symbol(ExpressionsArithmetiquesParserSym.ERREUR);}