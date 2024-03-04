package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
/* loaded from: classes2.dex */
public final class x7 implements ServiceConnection, d.a, d.b {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f9981a;

    /* renamed from: b  reason: collision with root package name */
    private volatile f3 f9982b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y7 f9983c;

    /* JADX INFO: Access modifiers changed from: protected */
    public x7(y7 y7Var) {
        this.f9983c = y7Var;
    }

    @Override // com.google.android.gms.common.internal.d.a
    @MainThread
    public final void b(Bundle bundle) {
        com.google.android.gms.common.internal.p.e("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                com.google.android.gms.common.internal.p.j(this.f9982b);
                this.f9983c.f9432a.a().z(new u7(this, (p4.e) this.f9982b.A()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f9982b = null;
                this.f9981a = false;
            }
        }
    }

    @WorkerThread
    public final void c(Intent intent) {
        x7 x7Var;
        this.f9983c.h();
        Context f10 = this.f9983c.f9432a.f();
        d4.a b10 = d4.a.b();
        synchronized (this) {
            if (this.f9981a) {
                this.f9983c.f9432a.b().v().a("Connection attempt already in progress");
                return;
            }
            this.f9983c.f9432a.b().v().a("Using local app measurement service");
            this.f9981a = true;
            x7Var = this.f9983c.f10014c;
            b10.a(f10, intent, x7Var, 129);
        }
    }

    @WorkerThread
    public final void d() {
        this.f9983c.h();
        Context f10 = this.f9983c.f9432a.f();
        synchronized (this) {
            if (this.f9981a) {
                this.f9983c.f9432a.b().v().a("Connection attempt already in progress");
            } else if (this.f9982b != null && (this.f9982b.isConnecting() || this.f9982b.isConnected())) {
                this.f9983c.f9432a.b().v().a("Already awaiting connection attempt");
            } else {
                this.f9982b = new f3(f10, Looper.getMainLooper(), this, this);
                this.f9983c.f9432a.b().v().a("Connecting to remote service");
                this.f9981a = true;
                com.google.android.gms.common.internal.p.j(this.f9982b);
                this.f9982b.n();
            }
        }
    }

    @WorkerThread
    public final void e() {
        if (this.f9982b != null && (this.f9982b.isConnected() || this.f9982b.isConnecting())) {
            this.f9982b.disconnect();
        }
        this.f9982b = null;
    }

    @Override // com.google.android.gms.common.internal.d.b
    @MainThread
    public final void f(@NonNull ConnectionResult connectionResult) {
        com.google.android.gms.common.internal.p.e("MeasurementServiceConnection.onConnectionFailed");
        j3 E = this.f9983c.f9432a.E();
        if (E != null) {
            E.w().b("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f9981a = false;
            this.f9982b = null;
        }
        this.f9983c.f9432a.a().z(new w7(this));
    }

    @Override // com.google.android.gms.common.internal.d.a
    @MainThread
    public final void onConnectionSuspended(int i9) {
        com.google.android.gms.common.internal.p.e("MeasurementServiceConnection.onConnectionSuspended");
        this.f9983c.f9432a.b().q().a("Service connection suspended");
        this.f9983c.f9432a.a().z(new v7(this));
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        x7 x7Var;
        p4.e a3Var;
        com.google.android.gms.common.internal.p.e("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f9981a = false;
                this.f9983c.f9432a.b().r().a("Service connected with null binder");
                return;
            }
            p4.e eVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    if (queryLocalInterface instanceof p4.e) {
                        a3Var = (p4.e) queryLocalInterface;
                    } else {
                        a3Var = new a3(iBinder);
                    }
                    eVar = a3Var;
                    this.f9983c.f9432a.b().v().a("Bound to IMeasurementService interface");
                } else {
                    this.f9983c.f9432a.b().r().b("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.f9983c.f9432a.b().r().a("Service connect failed to get IMeasurementService");
            }
            if (eVar == null) {
                this.f9981a = false;
                try {
                    d4.a b10 = d4.a.b();
                    Context f10 = this.f9983c.f9432a.f();
                    x7Var = this.f9983c.f10014c;
                    b10.c(f10, x7Var);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.f9983c.f9432a.a().z(new s7(this, eVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.common.internal.p.e("MeasurementServiceConnection.onServiceDisconnected");
        this.f9983c.f9432a.b().q().a("Service disconnected");
        this.f9983c.f9432a.a().z(new t7(this, componentName));
    }
}
