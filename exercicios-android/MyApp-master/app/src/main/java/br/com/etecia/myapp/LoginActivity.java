package br.com.etecia.myapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class LoginActivity extends AppCompatActivity {
    Button btnAbrirSplash;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login_layout);
        btnAbrirSplash = findViewById(R.id.btnAbrirSplash);
        btnAbrirSplash.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(),SplashActivity.class));
                Toast.makeText(getApplicationContext(),"cliquei",Toast.LENGTH_SHORT).show();
            }
    });
}
}