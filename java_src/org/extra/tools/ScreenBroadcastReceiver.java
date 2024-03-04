package org.extra.tools;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* loaded from: classes7.dex */
public class ScreenBroadcastReceiver extends BroadcastReceiver {
    private ScreenStateListener listener;

    /* loaded from: classes7.dex */
    public interface ScreenStateListener {
        void onScreenOff();

        void onScreenOn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScreenBroadcastReceiver(ScreenStateListener screenStateListener) {
        this.listener = screenStateListener;
    }

    private Context getApplicationContext() {
        try {
            return ((Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null)).getApplicationContext();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.SCREEN_ON".equals(action)) {
            this.listener.onScreenOn();
        } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
            this.listener.onScreenOff();
        }
    }

    public void register() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        try {
            Context applicationContext = getApplicationContext();
            if (applicationContext != null) {
                applicationContext.registerReceiver(this, intentFilter);
            }
        } catch (Exception unused) {
        }
    }

    public void unregister() {
        try {
            Context applicationContext = getApplicationContext();
            if (applicationContext != null) {
                applicationContext.unregisterReceiver(this);
            }
        } catch (Exception unused) {
        }
    }
}
