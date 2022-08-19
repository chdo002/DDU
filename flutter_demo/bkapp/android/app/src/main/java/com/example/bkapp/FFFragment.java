package com.example.bkapp;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import io.flutter.embedding.android.FlutterFragment;

/**
 * A simple {@link Fragment} subclass.
 * create an instance of this fragment.
 */
public class FFFragment extends Fragment {

    public FFFragment() {
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        FlutterFragment flutterFragment = FlutterFragment.withNewEngine().build();
        getParentFragmentManager().beginTransaction().replace(R.id.ff_ll_container, flutterFragment).commit();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_f_f, container, false);
    }
}