package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class q1 extends g {

    /* renamed from: f  reason: collision with root package name */
    private final HashMap f7773f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private final Context f7774g;

    /* renamed from: h  reason: collision with root package name */
    private volatile Handler f7775h;

    /* renamed from: i  reason: collision with root package name */
    private final p1 f7776i;

    /* renamed from: j  reason: collision with root package name */
    private final d4.a f7777j;

    /* renamed from: k  reason: collision with root package name */
    private final long f7778k;

    /* renamed from: l  reason: collision with root package name */
    private final long f7779l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q1(Context context, Looper looper) {
        p1 p1Var = new p1(this, null);
        this.f7776i = p1Var;
        this.f7774g = context.getApplicationContext();
        this.f7775h = new com.google.android.gms.internal.common.n(looper, p1Var);
        this.f7777j = d4.a.b();
        this.f7778k = 5000L;
        this.f7779l = 300000L;
    }

    @Override // com.google.android.gms.common.internal.g
    protected final void d(m1 m1Var, ServiceConnection serviceConnection, String str) {
        p.k(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7773f) {
            n1 n1Var = (n1) this.f7773f.get(m1Var);
            if (n1Var != null) {
                if (n1Var.h(serviceConnection)) {
                    n1Var.f(serviceConnection, str);
                    if (n1Var.i()) {
                        this.f7775h.sendMessageDelayed(this.f7775h.obtainMessage(0, m1Var), this.f7778k);
                    }
                } else {
                    String obj = m1Var.toString();
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + obj);
                }
            } else {
                String obj2 = m1Var.toString();
                throw new IllegalStateException("Nonexistent connection status for service config: " + obj2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.g
    public final boolean f(m1 m1Var, ServiceConnection serviceConnection, String str, @Nullable Executor executor) {
        boolean j10;
        p.k(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7773f) {
            n1 n1Var = (n1) this.f7773f.get(m1Var);
            if (n1Var == null) {
                n1Var = new n1(this, m1Var);
                n1Var.d(serviceConnection, serviceConnection, str);
                n1Var.e(str, executor);
                this.f7773f.put(m1Var, n1Var);
            } else {
                this.f7775h.removeMessages(0, m1Var);
                if (!n1Var.h(serviceConnection)) {
                    n1Var.d(serviceConnection, serviceConnection, str);
                    int a10 = n1Var.a();
                    if (a10 == 1) {
                        serviceConnection.onServiceConnected(n1Var.b(), n1Var.c());
                    } else if (a10 == 2) {
                        n1Var.e(str, executor);
                    }
                } else {
                    String obj = m1Var.toString();
                    throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + obj);
                }
            }
            j10 = n1Var.j();
        }
        return j10;
    }
}
