package com.quiz;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author Beto
 */

public class Perguntas {
    
    private static double resAnterior = 0.0;
    private static double resTotal = 0.0;
    private static int contador = 0;
    private static ArrayList<Questions> teste;
    
    public static double validaTeste(String[] resposta) {
        int corrects = 0;
        for (int i = 0; i < teste.size(); i++) {
            Questions q = teste.get(i);
            if (q.getResposta().equals(resposta[i])) {
                corrects++;
            }
        }
        double grade = 100.0 * (double) corrects / (double) teste.size();
        contador++;
        resTotal += grade;
        resAnterior = grade;

        return grade;
    }
    
    public static double calculaMedia() {
        double media = 0.0;
        media = resTotal / contador;
        
        return media;
    }

    public static ArrayList<Questions> getTeste() {
        if (teste == null) {
            teste = new ArrayList<>();
            Questions q1 = new Questions("Pokémon: O que Ash pega emprestado de Misty quando a conheceu?",
                                        "Bicicleta", new String[]{"Patins","Skate","Bicicleta"});
           
            Questions q2 = new Questions("Harry Potter: O total de relíquias da morte são: ",
                                        "3 reliquias", new String[]{"3 reliquias","2 reliquias","4 reliquias"});

            Questions q3 = new Questions("Cavaleiros do Zódiaco: Qual o nome do cavaleiro da 6° casa do santuário?",
                                        "Shaka", new String[]{"Aioria","Dohko","Shaka"});
            
            Questions q4 = new Questions("Qual o nome da joia apresentada em Doutor Estranho?",
                                        "Olho de Agamotto", new String[]{"Olho de Tandera","Olho de Agamotto","Olho do Milenio"});
            
            Questions q5 = new Questions("Dragonball Z: Segundo Vegeta o poder de luta do Kakarotto é mais de: ",
                                        "8000", new String[]{"8000","9000","800"});
            
            Questions q6 = new Questions("Yu-Gi-Oh: Qual dessas reliquias pertence ao Yugi?",
                                        "Enigma do Milenio", new String[]{"Olho do Milenio","Enigma do Milenio","Colar do Milenio"});
            
            Questions q7 = new Questions("No filme De Volta para o Futuro Parte 2, Marty viaja para qual ano?",
                                        "Ano de 2015", new String[]{"Ano de 2016","Ano de 2014","Ano de 2015"});
            
            Questions q8 = new Questions("Qual o nome da Inteligência Artificial no filme Exterminador do Futuro?",
                                        "Skynet", new String[]{"Skynet","NetSky","TipoNet"});
            
            Questions q9 = new Questions("O meme \"Faz o urro\" pertence a qual filme de Shrek?",
                                        "Filme 4", new String[]{"Filme 3","Filme 2","Filme 4"});
            
            Questions q10 = new Questions("Qual o nome da mãe de Bruce Wayne?",
                                        "Martha", new String[]{"Maggie","Martha","Diana"});
            
            teste.add(q1);
            teste.add(q2);
            teste.add(q3);
            teste.add(q4);
            teste.add(q5);
            teste.add(q6);
            teste.add(q7);
            teste.add(q8);
            teste.add(q9);
            teste.add(q10);
        }
        Collections.shuffle(teste);
        return teste;
    }

    public static double getResAnterior() {
        return resAnterior;
    }

    public static void setResAnterior(double resAnterior) {
        Perguntas.resAnterior = resAnterior;
    }

    public static double getResAtual() {
        return resTotal;
    }

    public static void setResAtual(double resTotal) {
        Perguntas.resTotal = resTotal;
    }

    public static int getContador() {
        return contador;
    }

    public static void setContador(int contador) {
        Perguntas.contador = contador;
    }
    
    public static void limparTudo() {
        Perguntas.contador = 0;
        Perguntas.resAnterior = 0.0;
        Perguntas.resTotal = 0.0;
        Perguntas.teste = null;
        
    }
}
