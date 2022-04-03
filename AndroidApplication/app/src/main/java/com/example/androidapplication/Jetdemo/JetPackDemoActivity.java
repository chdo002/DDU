package com.example.androidapplication.Jetdemo;

import static com.example.androidapplication.databinding.ActivityJetdemoLayoutBinding.*;

import android.os.Bundle;
import android.view.View;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;

import com.example.androidapplication.databinding.ActivityJetdemoLayoutBinding;

public class JetPackDemoActivity extends AppCompatActivity {

    private ActivityJetdemoLayoutBinding binding;

    private MutableLiveData<String> name = new MutableLiveData();

    //----------------------------------------------------------------------------------------------

    private JetDemoViewModel viewModel;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityJetdemoLayoutBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        binding.buttonOne.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                name.postValue("新值" + binding.jetDemoText.getText());
            }
        });

        name.observe(this, new Observer<String>() {
            @Override
            public void onChanged(String s) {
                binding.jetDemoText.setText(s);
            }
        });

        //------------------------------------------------------------------------------------------

        viewModel = new ViewModelProvider(this).get(JetDemoViewModel.class);

        viewModel.name.observe(this, new Observer<String>() {
            @Override
            public void onChanged(String name) {
                binding.jetDemoText2.setText(name);
            }
        });

        binding.buttonOne2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                viewModel.name.postValue(viewModel.name.getValue() + "new ");
            }
        });

    }
}
