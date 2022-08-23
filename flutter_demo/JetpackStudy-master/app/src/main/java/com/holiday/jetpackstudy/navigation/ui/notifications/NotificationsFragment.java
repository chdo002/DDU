package com.holiday.jetpackstudy.navigation.ui.notifications;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;

import com.holiday.jetpackstudy.R;
import com.holiday.jetpackstudy.base.BaseFragment;

import io.flutter.embedding.android.FlutterFragment;

public class NotificationsFragment extends BaseFragment {

    private NotificationsViewModel notificationsViewModel;

    private FlutterFragment mRepGoalsFlutterFragment1;
    private static final String TAG_REP_GOALS_FLUTTER_FRAGMENT_1 = "FLUTTER_FRAGMENT_TAG_1";

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        notificationsViewModel =
                ViewModelProviders.of(this).get(NotificationsViewModel.class);
        //        final TextView textView = root.findViewById(R.id.text_notifications);
//        notificationsViewModel.getText().observe(getViewLifecycleOwner(), new Observer<String>() {
//            @Override
//            public void onChanged(@Nullable String s) {
//                textView.setText(s);
//            }
//        });

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

        return inflater.inflate(R.layout.fragment_notifications, container, false);
    }
}