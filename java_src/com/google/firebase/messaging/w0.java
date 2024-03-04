package com.google.firebase.messaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class w0 implements Runnable {

    /* renamed from: f  reason: collision with root package name */
    private static final Object f14179f = new Object();
    @GuardedBy("TOPIC_SYNC_TASK_LOCK")

    /* renamed from: g  reason: collision with root package name */
    private static Boolean f14180g;
    @GuardedBy("TOPIC_SYNC_TASK_LOCK")

    /* renamed from: h  reason: collision with root package name */
    private static Boolean f14181h;

    /* renamed from: a  reason: collision with root package name */
    private final Context f14182a;

    /* renamed from: b  reason: collision with root package name */
    private final e0 f14183b;

    /* renamed from: c  reason: collision with root package name */
    private final PowerManager.WakeLock f14184c;

    /* renamed from: d  reason: collision with root package name */
    private final v0 f14185d;

    /* renamed from: e  reason: collision with root package name */
    private final long f14186e;

    @VisibleForTesting
    /* loaded from: classes2.dex */
    class a extends BroadcastReceiver {
        @Nullable
        @GuardedBy("this")

        /* renamed from: a  reason: collision with root package name */
        private w0 f14187a;

        public a(w0 w0Var) {
            this.f14187a = w0Var;
        }

        public void a() {
            if (w0.c()) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            w0.this.f14182a.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            w0 w0Var = this.f14187a;
            if (w0Var == null) {
                return;
            }
            if (w0Var.k()) {
                if (w0.c()) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                this.f14187a.f14185d.l(this.f14187a, 0L);
                context.unregisterReceiver(this);
                this.f14187a = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w0(v0 v0Var, Context context, e0 e0Var, long j10) {
        this.f14185d = v0Var;
        this.f14182a = context;
        this.f14186e = j10;
        this.f14183b = e0Var;
        this.f14184c = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    static /* synthetic */ boolean c() {
        return l();
    }

    private static String g(String str) {
        return "Missing Permission: " + str + ". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest";
    }

    private static boolean h(Context context) {
        boolean booleanValue;
        boolean booleanValue2;
        synchronized (f14179f) {
            Boolean bool = f14181h;
            if (bool == null) {
                booleanValue = i(context, "android.permission.ACCESS_NETWORK_STATE", bool);
            } else {
                booleanValue = bool.booleanValue();
            }
            Boolean valueOf = Boolean.valueOf(booleanValue);
            f14181h = valueOf;
            booleanValue2 = valueOf.booleanValue();
        }
        return booleanValue2;
    }

    private static boolean i(Context context, String str, Boolean bool) {
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z10 = context.checkCallingOrSelfPermission(str) == 0;
        if (!z10 && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", g(str));
        }
        return z10;
    }

    private static boolean j(Context context) {
        boolean booleanValue;
        boolean booleanValue2;
        synchronized (f14179f) {
            Boolean bool = f14180g;
            if (bool == null) {
                booleanValue = i(context, "android.permission.WAKE_LOCK", bool);
            } else {
                booleanValue = bool.booleanValue();
            }
            Boolean valueOf = Boolean.valueOf(booleanValue);
            f14180g = valueOf;
            booleanValue2 = valueOf.booleanValue();
        }
        return booleanValue2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean k() {
        boolean z10;
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f14182a.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        if (activeNetworkInfo != null) {
            z10 = activeNetworkInfo.isConnected();
        }
        return z10;
    }

    private static boolean l() {
        return Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3));
    }

    @Override // java.lang.Runnable
    public void run() {
        PowerManager.WakeLock wakeLock;
        if (j(this.f14182a)) {
            this.f14184c.acquire(d.f14047a);
        }
        try {
            try {
                try {
                    this.f14185d.m(true);
                } catch (Throwable th2) {
                    if (j(this.f14182a)) {
                        try {
                            this.f14184c.release();
                        } catch (RuntimeException unused) {
                            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                        }
                    }
                    throw th2;
                }
            } catch (IOException e10) {
                Log.e("FirebaseMessaging", "Failed to sync topics. Won't retry sync. " + e10.getMessage());
                this.f14185d.m(false);
                if (!j(this.f14182a)) {
                    return;
                }
                wakeLock = this.f14184c;
            }
            if (!this.f14183b.g()) {
                this.f14185d.m(false);
                if (j(this.f14182a)) {
                    try {
                        this.f14184c.release();
                    } catch (RuntimeException unused2) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            } else if (h(this.f14182a) && !k()) {
                new a(this).a();
                if (j(this.f14182a)) {
                    try {
                        this.f14184c.release();
                    } catch (RuntimeException unused3) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            } else {
                if (this.f14185d.p()) {
                    this.f14185d.m(false);
                } else {
                    this.f14185d.q(this.f14186e);
                }
                if (j(this.f14182a)) {
                    wakeLock = this.f14184c;
                    wakeLock.release();
                }
            }
        } catch (RuntimeException unused4) {
            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
        }
    }
}
