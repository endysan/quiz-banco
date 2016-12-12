package com.quiz;

/**
 *
 * @author Uno
 */
public class Aluno {
    private static String nome;
    private static double media;
    private static double notaAnterior;

    public static String getNome() {
        return nome;
    }

    public static void setNome(String nome) {
        Aluno.nome = nome;
    }

    public static double getMedia() {
        return media;
    }

    public static void setMedia(double media) {
        Aluno.media = media;
    }

    public static double getNotaAnterior() {
        return notaAnterior;
    }

    public static void setNotaAnterior(double notaAnterior) {
        Aluno.notaAnterior = notaAnterior;
    }

    public static void limparTudo() {
        Aluno.nome = null;
        Aluno.media = 0.0;
        Aluno.notaAnterior = 0.0;
    }   
}