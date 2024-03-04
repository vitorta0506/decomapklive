package cn.jpush.android.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.ar.f;
import cn.jiguang.as.d;
import cn.jiguang.internal.JConstants;
/* loaded from: classes.dex */
public class PushReceiver extends BroadcastReceiver {
    private static final String TAG = "PushReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if (f.a()) {
                d.d(TAG, "sdk is banned, not handle push_receiver task");
                return;
            }
            d.c(TAG, "onReceive:" + intent.getAction());
            if (!JConstants.isCallInit.get()) {
                d.d(TAG, "please call init");
                return;
            }
            JCoreManager.onEvent(context.getApplicationContext(), intent.getStringExtra("sdktype"), 31, null, null, intent);
        } catch (Throwable unused) {
        }
    }
}
