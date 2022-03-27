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
espace = \s
sep = ";"

%%

// Regles lexicales
{nombre} { return new Symbol(EvaluateurParserSym.NOMBRE, new Integer(yytext())); }
{plus} { return new Symbol(EvaluateurParserSym.PLUS); }
{espace} { /* Rien a faire */ }
{sep} { return new Symbol(EvaluateurParserSym.SEP); }
