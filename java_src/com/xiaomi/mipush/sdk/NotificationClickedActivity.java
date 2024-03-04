package com.xiaomi.mipush.sdk;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.material.badge.BadgeDrawable;
/* loaded from: classes5.dex */
public final class NotificationClickedActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private BroadcastReceiver f36203a;

    /* renamed from: a  reason: collision with other field name */
    private Handler f14a;

    private void a(Intent intent) {
        if (intent != null) {
            try {
                Intent intent2 = (Intent) intent.getParcelableExtra("mipush_serviceIntent");
                if (intent2 != null) {
                    intent2.setComponent(new ComponentName(getPackageName(), "com.xiaomi.mipush.sdk.PushMessageHandler"));
                    intent2.putExtra("is_clicked_activity_call", true);
                    tf.c.s("clicked activity start service.");
                    startService(intent2);
                }
            } catch (Exception e10) {
                tf.c.o(e10);
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = 1;
        attributes.width = 1;
        attributes.gravity = BadgeDrawable.TOP_START;
        window.setAttributes(attributes);
        Handler handler = new Handler();
        this.f14a = handler;
        handler.postDelayed(new u0(this), 3000L);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("action_clicked_activity_finish");
        v0 v0Var = new v0(this);
        this.f36203a = v0Var;
        try {
            registerReceiver(v0Var, intentFilter, e0.a(this), null);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f14a.removeCallbacksAndMessages(null);
        try {
            unregisterReceiver(this.f36203a);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        a(getIntent());
    }
}
