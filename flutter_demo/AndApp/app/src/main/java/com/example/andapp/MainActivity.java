package com.example.andapp;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import io.flutter.embedding.android.FlutterActivity;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ((Button)findViewById(R.id.button1)).setOnClickListener((View.OnClickListener) this);
    }

    public void onClick(View v) {
        Log.d("123","123");
        startActivity(
                FlutterActivity.createDefaultIntent(this)
        );
    }
}