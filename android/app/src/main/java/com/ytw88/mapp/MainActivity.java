package com.ytw88.mapp;

import android.app.Activity;
import android.os.Bundle;
import com.ytw.sdk.MPSDK;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        try {
            MPSDK.launchApp(BuildConfig.appId, MainActivity.this);
        } catch (Exception e) {
            e.printStackTrace();
        }

//        findViewById(R.id.button).setOnClickListener(v -> {
//            try {
//                MPSDK.launchApp(BuildConfig.appId, MainActivity.this);
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        });
    }
}
