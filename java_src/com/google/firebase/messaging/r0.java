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
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class r0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final long f14113a;

    /* renamed from: b  reason: collision with root package name */
    private final PowerManager.WakeLock f14114b;

    /* renamed from: c  reason: collision with root package name */
    private final FirebaseMessaging f14115c;

    /* renamed from: d  reason: collision with root package name */
    ExecutorService f14116d = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new f4.a("firebase-iid-executor"));

    /* loaded from: classes2.dex */
    static class a extends BroadcastReceiver {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private r0 f14117a;

        public a(r0 r0Var) {
            this.f14117a = r0Var;
        }

        public void a() {
            if (r0.d()) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            this.f14117a.c().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            r0 r0Var = this.f14117a;
            if (r0Var != null && r0Var.f()) {
                if (r0.d()) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                this.f14117a.f14115c.j(this.f14117a, 0L);
                this.f14117a.c().unregisterReceiver(this);
                this.f14117a = null;
            }
        }
    }

    public r0(FirebaseMessaging firebaseMessaging, long j10) {
        this.f14115c = firebaseMessaging;
        this.f14113a = j10;
        PowerManager.WakeLock newWakeLock = ((PowerManager) c().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f14114b = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    static boolean d() {
        return Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3));
    }

    Context c() {
        return this.f14115c.k();
    }

    boolean f() {
        ConnectivityManager connectivityManager = (ConnectivityManager) c().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    boolean g() throws IOException {
        try {
            if (this.f14115c.i() == null) {
                Log.e("FirebaseMessaging", "Token retrieval failed: null");
                return false;
            } else if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Token successfully retrieved");
                return true;
            } else {
                return true;
            }
        } catch (IOException e10) {
            if (z.g(e10.getMessage())) {
                Log.w("FirebaseMessaging", "Token retrieval failed: " + e10.getMessage() + ". Will retry token retrieval");
                return false;
            } else if (e10.getMessage() == null) {
                Log.w("FirebaseMessaging", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            } else {
                throw e10;
            }
        } catch (SecurityException unused) {
            Log.w("FirebaseMessaging", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (n0.b().e(c())) {
            this.f14114b.acquire();
        }
        try {
            try {
                this.f14115c.C(true);
            } catch (IOException e10) {
                Log.e("FirebaseMessaging", "Topic sync or token retrieval failed on hard failure exceptions: " + e10.getMessage() + ". Won't retry the operation.");
                this.f14115c.C(false);
                if (!n0.b().e(c())) {
                    return;
                }
            }
            if (!this.f14115c.t()) {
                this.f14115c.C(false);
                if (n0.b().e(c())) {
                    this.f14114b.release();
                }
            } else if (n0.b().d(c()) && !f()) {
                new a(this).a();
                if (n0.b().e(c())) {
                    this.f14114b.release();
                }
            } else {
                if (g()) {
                    this.f14115c.C(false);
                } else {
                    this.f14115c.F(this.f14113a);
                }
                if (!n0.b().e(c())) {
                    return;
                }
                this.f14114b.release();
            }
        } catch (Throwable th2) {
            if (n0.b().e(c())) {
                this.f14114b.release();
            }
            throw th2;
        }
    }
}
