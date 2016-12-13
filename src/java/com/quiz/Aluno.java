package com.quiz;

public class Aluno {
    private static String nome;
    private static String login;
    private static String senha;
    private static double media;
    private static boolean adm;
    private static Historico hist;

    /**
     * Responsável por zerar as variáveis da classe
     */
    public static void limparTudo() {
        Aluno.nome = null;
        Aluno.media = 0.0;
    }   
    public static void logar(){
        
    }
    public static String getNome() {
        return nome;
    }

    public static void setNome(String aNome) {
        nome = aNome;
    }

    public static String getLogin() {
        return login;
    }

    public static void setLogin(String aLogin) {
        login = aLogin;
    }

    public static String getSenha() {
        return senha;
    }

    public static void setSenha(String aSenha) {
        senha = aSenha;
    }

    public static double getMedia() {
        return media;
    }

    public static void setMedia(double aMedia) {
        media = aMedia;
    }

    public static boolean isAdm() {
        return adm;
    }

    public static void setAdm(boolean aAdm) {
        adm = aAdm;
    }

    public static Historico getHist() {
        return hist;
    }

    public static void setHist(Historico aHist) {
        hist = aHist;
    }
}