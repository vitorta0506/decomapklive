package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2.dex */
public final class e1 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final int f7730a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d f7731b;

    public e1(d dVar, int i9) {
        this.f7731b = dVar;
        this.f7730a = i9;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        l t0Var;
        d dVar = this.f7731b;
        if (iBinder == null) {
            d.a0(dVar, 16);
            return;
        }
        obj = dVar.f7698n;
        synchronized (obj) {
            d dVar2 = this.f7731b;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (queryLocalInterface != null && (queryLocalInterface instanceof l)) {
                t0Var = (l) queryLocalInterface;
            } else {
                t0Var = new t0(iBinder);
            }
            dVar2.f7699o = t0Var;
        }
        this.f7731b.b0(0, null, this.f7730a);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f7731b.f7698n;
        synchronized (obj) {
            this.f7731b.f7699o = null;
        }
        Handler handler = this.f7731b.f7696l;
        handler.sendMessage(handler.obtainMessage(6, this.f7730a, 1));
    }
}
