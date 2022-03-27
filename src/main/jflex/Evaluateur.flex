// Package et imports
package fr.usmb.m1isc.compilation.simple;
import java_cup.runtime.Symbol;

%%

// Declarations et options
%class EvaluateurLexer
%unicode
%integer

// CUP
%cupsym EvaluateurParserSym
%cup

// Code a ajouter dans la classe generee
%{

%}

// Definitions regulieres
nombre = [0-9]+
plus = "+"
moins = "-"
fois = "*"
div = "/"
par_g = "("
par_d = ")"
espace = \s
sep = ";"

%%

// Regles lexicales
{nombre} { return new Symbol(EvaluateurParserSym.NOMBRE, new Integer(yytext())); }
{plus} { return new Symbol(EvaluateurParserSym.PLUS); }
{moins} { return new Symbol(EvaluateurParserSym.MOINS); }
{fois} { return new Symbol(EvaluateurParserSym.FOIS); }
{div} { return new Symbol(EvaluateurParserSym.DIV); }
{par_g} { return new Symbol(EvaluateurParserSym.PAR_G); }
{par_d} { return new Symbol(EvaluateurParserSym.PAR_D); }
{espace} { /* Rien a faire */ }
{sep} { return new Symbol(EvaluateurParserSym.SEP); }
. { return new Symbol(EvaluateurParserSym.ERROR); }
