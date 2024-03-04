package com.meizu.cloud.pushsdk.b.a;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.app.NotificationCompat;
import com.meizu.cloud.pushinternal.DebugLogger;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private AlarmManager f28184a;

    /* renamed from: b  reason: collision with root package name */
    private Context f28185b;

    /* renamed from: c  reason: collision with root package name */
    private Runnable f28186c;

    /* renamed from: d  reason: collision with root package name */
    private long f28187d;

    /* renamed from: e  reason: collision with root package name */
    private int f28188e;

    /* renamed from: f  reason: collision with root package name */
    private C0277a f28189f;

    /* renamed from: g  reason: collision with root package name */
    private PendingIntent f28190g;

    /* renamed from: h  reason: collision with root package name */
    private String f28191h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f28192i;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.meizu.cloud.pushsdk.b.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0277a extends BroadcastReceiver {
        private C0277a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !intent.getAction().equals("alarm.util")) {
                return;
            }
            DebugLogger.i("AlarmUtils", "on receive delayed task, keyword: " + a.this.f28191h);
            a.this.f28192i = true;
            a.this.c();
            a.this.f28186c.run();
        }
    }

    public a(Context context, Runnable runnable, long j10) {
        this(context, runnable, j10, true);
    }

    public a(Context context, Runnable runnable, long j10, boolean z10) {
        Context applicationContext = context.getApplicationContext();
        this.f28185b = applicationContext;
        this.f28186c = runnable;
        this.f28187d = j10;
        this.f28188e = !z10 ? 1 : 0;
        this.f28184a = (AlarmManager) applicationContext.getSystemService(NotificationCompat.CATEGORY_ALARM);
        this.f28192i = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            C0277a c0277a = this.f28189f;
            if (c0277a != null) {
                this.f28185b.unregisterReceiver(c0277a);
                this.f28189f = null;
            }
        } catch (Exception e10) {
            DebugLogger.e("AlarmUtils", "clean error, " + e10.getMessage());
        }
    }

    public boolean a() {
        if (!this.f28192i) {
            DebugLogger.e("AlarmUtils", "last task not completed");
            return false;
        }
        this.f28192i = false;
        C0277a c0277a = new C0277a();
        this.f28189f = c0277a;
        this.f28185b.registerReceiver(c0277a, new IntentFilter("alarm.util"));
        this.f28191h = String.valueOf(System.currentTimeMillis());
        this.f28190g = PendingIntent.getBroadcast(this.f28185b, 0, new Intent("alarm.util"), BasicMeasure.EXACTLY);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f28184a.setExactAndAllowWhileIdle(this.f28188e, System.currentTimeMillis() + this.f28187d, this.f28190g);
        } else {
            this.f28184a.setExact(this.f28188e, System.currentTimeMillis() + this.f28187d, this.f28190g);
        }
        DebugLogger.i("AlarmUtils", "start delayed task, keyword: " + this.f28191h);
        return true;
    }

    public void b() {
        if (this.f28184a != null && this.f28190g != null && !this.f28192i) {
            DebugLogger.i("AlarmUtils", "cancel  delayed task, keyword: " + this.f28191h);
            this.f28184a.cancel(this.f28190g);
        }
        c();
    }
}
