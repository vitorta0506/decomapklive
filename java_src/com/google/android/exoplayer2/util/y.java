package com.google.android.exoplayer2.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public final class y {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static y f7074e;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f7075a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<WeakReference<c>> f7076b = new CopyOnWriteArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final Object f7077c = new Object();
    @GuardedBy("networkTypeLock")

    /* renamed from: d  reason: collision with root package name */
    private int f7078d = 0;

    @RequiresApi(31)
    /* loaded from: classes2.dex */
    private static final class b {

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public static final class a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

            /* renamed from: a  reason: collision with root package name */
            private final y f7079a;

            public a(y yVar) {
                this.f7079a = yVar;
            }

            @Override // android.telephony.TelephonyCallback.DisplayInfoListener
            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                this.f7079a.k(overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5 ? 10 : 5);
            }
        }

        public static void a(Context context, y yVar) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) com.google.android.exoplayer2.util.a.e((TelephonyManager) context.getSystemService("phone"));
                a aVar = new a(yVar);
                telephonyManager.registerTelephonyCallback(context.getMainExecutor(), aVar);
                telephonyManager.unregisterTelephonyCallback(aVar);
            } catch (RuntimeException unused) {
                yVar.k(5);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(int i9);
    }

    /* loaded from: classes2.dex */
    private final class d extends BroadcastReceiver {
        private d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int g10 = y.g(context);
            if (l0.f6985a >= 31 && g10 == 5) {
                b.a(context, y.this);
            } else {
                y.this.k(g10);
            }
        }
    }

    private y(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new d(), intentFilter);
    }

    public static synchronized y d(Context context) {
        y yVar;
        synchronized (y.class) {
            if (f7074e == null) {
                f7074e = new y(context);
            }
            yVar = f7074e;
        }
        return yVar;
    }

    private static int e(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                return l0.f6985a >= 29 ? 9 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i9 = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i9 = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 2;
                    }
                    if (type != 4 && type != 5) {
                        if (type != 6) {
                            return type != 9 ? 8 : 7;
                        }
                        return 5;
                    }
                }
                return e(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(c cVar) {
        cVar.a(f());
    }

    private void j() {
        Iterator<WeakReference<c>> it = this.f7076b.iterator();
        while (it.hasNext()) {
            WeakReference<c> next = it.next();
            if (next.get() == null) {
                this.f7076b.remove(next);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i9) {
        synchronized (this.f7077c) {
            if (this.f7078d == i9) {
                return;
            }
            this.f7078d = i9;
            Iterator<WeakReference<c>> it = this.f7076b.iterator();
            while (it.hasNext()) {
                WeakReference<c> next = it.next();
                c cVar = next.get();
                if (cVar != null) {
                    cVar.a(i9);
                } else {
                    this.f7076b.remove(next);
                }
            }
        }
    }

    public int f() {
        int i9;
        synchronized (this.f7077c) {
            i9 = this.f7078d;
        }
        return i9;
    }

    public void i(final c cVar) {
        j();
        this.f7076b.add(new WeakReference<>(cVar));
        this.f7075a.post(new Runnable() { // from class: com.google.android.exoplayer2.util.x
            @Override // java.lang.Runnable
            public final void run() {
                y.this.h(cVar);
            }
        });
    }
}
