package com.tamourette.projetamourette;

import java.util.ArrayList;

public class Piece {

    private ArrayList<Capteur> capteurs;
    private String nom;
    private int image;


    public Piece(ArrayList<Capteur> capteurs, String nom, int image) {
        this.capteurs = capteurs;
        this.nom = nom;
        this.image = image;
    }

    public ArrayList<Capteur> getCapteurs(){
        return capteurs;
    }
    public String getNom(){
        return nom;
    }
    public int getImage() {
        return image;
    }
}
