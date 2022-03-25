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

        ExpressionsArithmetiquesLexer expLexer;
        if (args.length > 0)
            expLexer = new ExpressionsArithmetiquesLexer(new FileReader(args[0]));
        else
            expLexer = new ExpressionsArithmetiquesLexer(new InputStreamReader(System.in));
        @SuppressWarnings("deprecation")
        ExpressionsArithmetiquesParser p = new ExpressionsArithmetiquesParser(expLexer);
        p.parse();
    }
}
