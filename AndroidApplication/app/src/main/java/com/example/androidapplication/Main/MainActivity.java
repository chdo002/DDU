package com.example.androidapplication.Main;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

import androidx.appcompat.app.AppCompatActivity;

import com.example.androidapplication.Jetdemo.JetPackDemoActivity;
import com.example.androidapplication.R;
import com.example.androidapplication.Second.RecycleViewActivity;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        findViewById(R.id.text_v).setOnClickListener(this);
        findViewById(R.id.text_v2).setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.text_v) {
            startActivity(new Intent(MainActivity.this, RecycleViewActivity.class));
        } else if (id == R.id.text_v2) {
            startActivity(new Intent(MainActivity.this, JetPackDemoActivity.class));
        }
    }
}