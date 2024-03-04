package cn.jpush.android.service;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import cn.jiguang.al.a;
import cn.jiguang.aq.e;
import cn.jiguang.internal.JConstants;
import cn.jiguang.o.d;
/* loaded from: classes.dex */
public class DActivity extends Activity {
    private static final String TAG = "DActivity";

    private void handleStart() {
        try {
            e.a(getApplicationContext(), getIntent() != null ? getIntent().getExtras() : null, 8);
        } catch (Throwable th2) {
            a.a(TAG, "handle start error#" + th2);
        }
        try {
            finish();
        } catch (Throwable th3) {
            a.a(TAG, "finish error#" + th3);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a.a(TAG, "DActivity oncreate");
        if (d.c(getApplicationContext()) > 0 && JConstants.isInstrumentationHookFailed) {
            cn.jiguang.d.a.a(getApplicationContext());
        }
        handleStart();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        a.a(TAG, "DActivity onNewIntent");
        handleStart();
    }
}
