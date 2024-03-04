package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.MainThread;
/* loaded from: classes2.dex */
public final class z3 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final String f10078a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a4 f10079b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z3(a4 a4Var, String str) {
        this.f10079b = a4Var;
        this.f10078a = str;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder != null) {
            try {
                com.google.android.gms.internal.measurement.s0 f10 = com.google.android.gms.internal.measurement.r0.f(iBinder);
                if (f10 == null) {
                    this.f10079b.f9262a.b().w().a("Install Referrer Service implementation was not found");
                    return;
                }
                this.f10079b.f9262a.b().v().a("Install Referrer Service connected");
                this.f10079b.f9262a.a().z(new y3(this, f10, this));
                return;
            } catch (RuntimeException e10) {
                this.f10079b.f9262a.b().w().b("Exception occurred while calling Install Referrer API", e10);
                return;
            }
        }
        this.f10079b.f9262a.b().w().a("Install Referrer connection returned with null binder");
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f10079b.f9262a.b().v().a("Install Referrer Service disconnected");
    }
}
