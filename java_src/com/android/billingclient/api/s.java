package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final Object f4009a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private boolean f4010b = false;

    /* renamed from: c  reason: collision with root package name */
    private c f4011c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ b f4012d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ s(b bVar, c cVar, zzy zzyVar) {
        this.f4012d = bVar;
        this.f4011c = cVar;
    }

    private final void c(e eVar) {
        synchronized (this.f4009a) {
            c cVar = this.f4011c;
            if (cVar != null) {
                cVar.a(eVar);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object a() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.s.a():java.lang.Object");
    }

    public final /* synthetic */ void b() {
        b.s(this.f4012d, 0);
        b.B(this.f4012d, null);
        c(w.f4032r);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.internal.play_billing.a.i("BillingClient", "Billing service connected.");
        b.B(this.f4012d, com.google.android.gms.internal.play_billing.c.b(iBinder));
        if (b.E(this.f4012d, new Callable() { // from class: com.android.billingclient.api.r
            @Override // java.util.concurrent.Callable
            public final Object call() {
                s.this.a();
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.q
            @Override // java.lang.Runnable
            public final void run() {
                s.this.b();
            }
        }, b.w(this.f4012d)) == null) {
            c(b.y(this.f4012d));
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.a.j("BillingClient", "Billing service disconnected.");
        b.B(this.f4012d, null);
        b.s(this.f4012d, 0);
        synchronized (this.f4009a) {
            c cVar = this.f4011c;
            if (cVar != null) {
                cVar.onBillingServiceDisconnected();
            }
        }
    }
}
