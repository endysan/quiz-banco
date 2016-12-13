package com.quiz;

import java.util.ArrayList;
import java.util.Collections;

public class Prova {
    
    private static double resAnterior = 0.0;
    private static double resTotal = 0.0;
    private static int contador = 0;
    private static ArrayList<Pergunta> teste;
    
    /**
     * Verifica se a resposta do usuário é equivalente a resposta registrada no
     * sistema.
     * * Faz contagem de quantas vezes essa prova foi feita durante a sessão
     * * Acumula as notas do usuário
     * * Calcula nota da prova atual
     * @param resposta Um vetor de respostas dadas pelo usuário
     * @return Retorna a nota adquirida nessa prova
     */
    public static double validaTeste(String[] resposta) {
        int corrects = 0;
        for (int i = 0; i < teste.size(); i++) {
            Pergunta q = teste.get(i);
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
    
    /**
     * Método calcula a média da seguinte forma:
     * media = resultadoTotal / quantidade provas realizadas
     * @return Retorna o valor da média em double
     */
    public static double calculaMedia() {
        double media = 0.0;
        media = resTotal / contador;
        
        return media;
    }

    /**
     * Método responsável por gerar um teste composto por:
     * Pergunta - Enunciado da questão.
     * Resposta - A resposta correta para a questão.
     * Alternativa - uma série de opções para resposta
     * 
     * @return Retorna um arraylist preenchido com uma série de perguntas
     */
    public static ArrayList<Pergunta> gerarTeste() {
        if (teste == null) {
            teste = new ArrayList<>();
            Pergunta q1 = new Pergunta("Pokémon: O que Ash pega emprestado de Misty quando a conheceu?",
                                        "Bicicleta", new String[]{"Patins","Skate","Bicicleta"});
           
            Pergunta q2 = new Pergunta("Harry Potter: O total de relíquias da morte são: ",
                                        "3 reliquias", new String[]{"3 reliquias","2 reliquias","4 reliquias"});

            Pergunta q3 = new Pergunta("Cavaleiros do Zódiaco: Qual o nome do cavaleiro da 6° casa do santuário?",
                                        "Shaka", new String[]{"Aioria","Dohko","Shaka"});
            
            Pergunta q4 = new Pergunta("Qual o nome da joia apresentada em Doutor Estranho?",
                                        "Olho de Agamotto", new String[]{"Olho de Tandera","Olho de Agamotto","Olho do Milenio"});
            
            Pergunta q5 = new Pergunta("Dragonball Z: Segundo Vegeta o poder de luta do Kakarotto é mais de: ",
                                        "8000", new String[]{"8000","9000","800"});
            
            Pergunta q6 = new Pergunta("Yu-Gi-Oh: Qual dessas reliquias pertence ao Yugi?",
                                        "Enigma do Milenio", new String[]{"Olho do Milenio","Enigma do Milenio","Colar do Milenio"});
            
            Pergunta q7 = new Pergunta("No filme De Volta para o Futuro Parte 2, Marty viaja para qual ano?",
                                        "Ano de 2015", new String[]{"Ano de 2016","Ano de 2014","Ano de 2015"});
            
            Pergunta q8 = new Pergunta("Qual o nome da Inteligência Artificial no filme Exterminador do Futuro?",
                                        "Skynet", new String[]{"Skynet","NetSky","TipoNet"});
            
            Pergunta q9 = new Pergunta("O meme \"Faz o urro\" pertence a qual filme de Shrek?",
                                        "Filme 4", new String[]{"Filme 3","Filme 2","Filme 4"});
            
            Pergunta q10 = new Pergunta("Qual o nome da mãe de Bruce Wayne?",
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
        Prova.resAnterior = resAnterior;
    }

    public static double getResAtual() {
        return resTotal;
    }

    public static void setResAtual(double resTotal) {
        Prova.resTotal = resTotal;
    }

    public static int getContador() {
        return contador;
    }

    public static void setContador(int contador) {
        Prova.contador = contador;
    }
    
    /**
     * Responsável por zerar as váriaveis da classe
     */
    public static void limparTudo() {
        Prova.contador = 0;
        Prova.resAnterior = 0.0;
        Prova.resTotal = 0.0;
        Prova.teste = null;
    }
}
