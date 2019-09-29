package com.ytw88.mapp;

import android.app.Application;
import android.content.Context;
import android.support.multidex.MultiDex;

import com.ytw.sdk.LRUWindowManager;
import com.ytw.sdk.MPSDK;

public class YApplication extends Application {

    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        MultiDex.install(base);
    }

    @Override
    public void onCreate() {
        super.onCreate();
        MPSDK.Config c = new MPSDK.Config(this);
        c.setHost("https://mp.ytw88.com/");
        c.setWindowManager(new LRUWindowManager(3, this));
        c.setWhiteListOpen(false);
        try {
            MPSDK.init(c, this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
