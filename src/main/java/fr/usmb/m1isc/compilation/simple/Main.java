package fr.usmb.m1isc.compilation.simple;

import java.io.FileReader;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws Exception {
        /*SimpleLexer lexer;
        if (args.length > 0)
            lexer = new SimpleLexer(new FileReader(args[0]));
        else
            lexer = new SimpleLexer(new InputStreamReader(System.in));
        @SuppressWarnings("deprecation")
        SimpleParser p = new SimpleParser(lexer);
        p.parse();*/

        EvaluateurLexer evalLexer;
        if (args.length > 0)
            evalLexer = new EvaluateurLexer(new FileReader(args[0]));
        else
            evalLexer = new EvaluateurLexer(new InputStreamReader(System.in));
        @SuppressWarnings("deprecation")
        EvaluateurParser evalParser = new EvaluateurParser(evalLexer);
        evalParser.parse();
    }
}
