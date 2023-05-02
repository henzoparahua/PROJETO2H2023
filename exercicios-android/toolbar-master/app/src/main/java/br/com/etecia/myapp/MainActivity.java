package br.com.etecia.myapp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;

import com.google.android.material.appbar.MaterialToolbar;

public class MainActivity extends AppCompatActivity {
    // DECLARANDO VARIAVEL GLOBAL QUE IRA REPRESENTAR O XML NO JAVA
    MaterialToolbar idToolBar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // APRESENTANDO O XML PARA O JAVA
        idToolBar = findViewById(R.id.idToolBar);

        // Criando clique de nevegação
        idToolBar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(), "cliquei no menu hamburguer"
                        , Toast.LENGTH_SHORT).show();
            }
        });
        //criando clique nos itens de menu

        idToolBar.setOnMenuItemClickListener(new Toolbar.OnMenuItemClickListener() {
            @Override
            public boolean onMenuItemClick(MenuItem item) {
                switch (item.getItemId()){
                    case R.id.mFavorito:
                        Toast.makeText(getApplicationContext(), "cliquei no favorito"
                                , Toast.LENGTH_SHORT).show();
                        break;
                    case R.id.mBuscar:
                        Toast.makeText(getApplicationContext(), "cliquei no buscar"
                                , Toast.LENGTH_SHORT).show();
                        break;
                    case R.id.mCompartilhar:
                        Toast.makeText(getApplicationContext(), "cliquei no compartilhar"
                                , Toast.LENGTH_SHORT).show();
                        break;
                    case R.id.mSalvar:
                        Toast.makeText(getApplicationContext(), "cliquei no salvar"
                                , Toast.LENGTH_SHORT).show();
                        break;
                    case R.id.mSair:
                        Toast.makeText(getApplicationContext(), "cliquei no sair"
                                , Toast.LENGTH_SHORT).show();
                        break;

                }

                return true;
            }
        });
    }
}