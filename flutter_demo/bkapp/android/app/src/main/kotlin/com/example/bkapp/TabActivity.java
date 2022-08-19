package com.example.bkapp;

import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;

import com.google.android.material.bottomnavigation.BottomNavigationMenuView;
import com.google.android.material.bottomnavigation.BottomNavigationView;

import java.util.ArrayList;

public class TabActivity extends AppCompatActivity {
    private ArrayList<Fragment> fragments;
    private int lastFragment = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.tab_layout);

        FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();

        HomeFragment homeFragment = new HomeFragment();
        SecFragment secFragment = new SecFragment();
        FFFragment ffFragment = new FFFragment();

        fragments = new ArrayList<Fragment>();

        fragments.add(homeFragment);
        fragments.add(secFragment);
        fragments.add(ffFragment);

        fragmentTransaction.replace(R.id.fl_container, homeFragment, "12");

        fragmentTransaction.commitNow();

        BottomNavigationView navigationMenuView = findViewById(R.id.bottom_navigation);
        navigationMenuView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                if (item.getItemId() == R.id.nav_home) {
                    switchFragment(0);
                } else if (item.getItemId() == R.id.nav_car) {
                    switchFragment(1);
                } else if (item.getItemId() == R.id.nav_me) {
                    switchFragment(2);
                }
                return true;
            }
        });
    }

    void switchFragment(int index) {
        if (lastFragment != index) {
            FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
            fragmentTransaction.hide(fragments.get(lastFragment));

            Fragment newFragment = fragments.get(index);
            if (!newFragment.isAdded()) {
                fragmentTransaction.add(R.id.fl_container, newFragment);
            }
            fragmentTransaction.show(newFragment).commitAllowingStateLoss();
            lastFragment = index;
        }
    }
}