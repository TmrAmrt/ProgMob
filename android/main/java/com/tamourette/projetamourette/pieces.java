package com.tamourette.projetamourette;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ListView;

import java.util.ArrayList;

public class pieces extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pieces);
        ListView listView = findViewById(R.id.lvRooms);

        //TODO changer la liste pour celle obtenue par l'API
        ArrayList<Piece> list = new ArrayList<>();
        list.add(new Piece(new ArrayList<>(),"Room 2", R.drawable.ic_launcher_foreground));
        list.add(new Piece(new ArrayList<>(),"Room 1", R.drawable.meunier));
        list.add(new Piece(new ArrayList<>(),"Room 3", R.drawable.serier));

        RoomAdapter roomAdapter = new RoomAdapter(this, R.layout.room_item, list);
        listView.setAdapter(roomAdapter);

    }

    private void recupRooms(){
        //TODO récuperer la liste de pieces avec l'API
    }
    private void reucpImage(){
        //TODO récuperer la liste des images
    }
}