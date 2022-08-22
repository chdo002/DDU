package com.example.tabbarapplication.ui.notifications;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelProvider;

import com.example.tabbarapplication.R;
import com.example.tabbarapplication.databinding.FragmentNotificationsBinding;

import io.flutter.embedding.android.FlutterFragment;

public class NotificationsFragment extends Fragment {

    private FragmentNotificationsBinding binding;

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        NotificationsViewModel notificationsViewModel =
                new ViewModelProvider(this).get(NotificationsViewModel.class);

        binding = FragmentNotificationsBinding.inflate(inflater, container, false);

//        final TextView textView = binding.textNotifications;
//        notificationsViewModel.getText().observe(getViewLifecycleOwner(), textView::setText);


        FragmentManager fragmentManager = getChildFragmentManager();
        if (mRepGoalsFlutterFragment1 == null) {
            mRepGoalsFlutterFragment1 = FlutterFragment.withNewEngine()
//                    .transparencyMode(TransparencyMode.opaque)
                    .build();
            fragmentManager
                    .beginTransaction()
                    .add(R.id.card_view7,
                            mRepGoalsFlutterFragment1,
                            TAG_REP_GOALS_FLUTTER_FRAGMENT_1)
                    .commit();
        }
        return binding.getRoot();
    }

    private FlutterFragment mRepGoalsFlutterFragment1;
    private static final String TAG_REP_GOALS_FLUTTER_FRAGMENT_1 = "FLUTTER_FRAGMENT_TAG_1";
    @Override
    public void onStart() {
        super.onStart();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }
}