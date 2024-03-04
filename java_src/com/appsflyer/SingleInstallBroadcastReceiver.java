package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.AFa1aSDK;
/* loaded from: classes.dex */
public class SingleInstallBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        if (intent == null) {
            return;
        }
        try {
            str = intent.getStringExtra("referrer");
        } catch (Throwable th2) {
            AFLogger.afErrorLog("error in BroadcastReceiver ", th2);
            str = null;
        }
        if (str != null && AFa1aSDK.AFKeystoreWrapper(context).getString("referrer", null) != null) {
            AFa1aSDK.values().AFKeystoreWrapper(context, str);
            return;
        }
        String string = AppsFlyerProperties.getInstance().getString("referrer_timestamp");
        long currentTimeMillis = System.currentTimeMillis();
        if (string == null || currentTimeMillis - Long.valueOf(string).longValue() >= 2000) {
            AFLogger.afInfoLog("SingleInstallBroadcastReceiver called");
            AFa1aSDK.values().AFKeystoreWrapper(context, intent);
            AppsFlyerProperties.getInstance().set("referrer_timestamp", String.valueOf(System.currentTimeMillis()));
        }
    }
}
