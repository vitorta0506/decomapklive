package com.google.android.gms.cloudmessaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class o implements ServiceConnection {

    /* renamed from: c  reason: collision with root package name */
    p f7422c;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ t f7425f;

    /* renamed from: a  reason: collision with root package name */
    int f7420a = 0;

    /* renamed from: b  reason: collision with root package name */
    final Messenger f7421b = new Messenger(new l4.f(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.gms.cloudmessaging.h
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            o oVar = o.this;
            int i9 = message.arg1;
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                StringBuilder sb2 = new StringBuilder(41);
                sb2.append("Received response to request: ");
                sb2.append(i9);
                Log.d("MessengerIpcClient", sb2.toString());
            }
            synchronized (oVar) {
                r<?> rVar = oVar.f7424e.get(i9);
                if (rVar == null) {
                    StringBuilder sb3 = new StringBuilder(50);
                    sb3.append("Received response for unknown request: ");
                    sb3.append(i9);
                    Log.w("MessengerIpcClient", sb3.toString());
                    return true;
                }
                oVar.f7424e.remove(i9);
                oVar.f();
                Bundle data = message.getData();
                if (data.getBoolean("unsupported", false)) {
                    rVar.c(new zzq(4, "Not supported by GmsCore", null));
                    return true;
                }
                rVar.a(data);
                return true;
            }
        }
    }));

    /* renamed from: d  reason: collision with root package name */
    final Queue<r<?>> f7423d = new ArrayDeque();

    /* renamed from: e  reason: collision with root package name */
    final SparseArray<r<?>> f7424e = new SparseArray<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ o(t tVar, n nVar) {
        this.f7425f = tVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a(int i9, @Nullable String str) {
        b(i9, str, null);
    }

    final synchronized void b(int i9, @Nullable String str, @Nullable Throwable th2) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(str);
            Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
        }
        int i10 = this.f7420a;
        if (i10 == 0) {
            throw new IllegalStateException();
        }
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                return;
            }
            this.f7420a = 4;
            return;
        }
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Unbinding service");
        }
        this.f7420a = 4;
        d4.a.b().c(t.a(this.f7425f), this);
        zzq zzqVar = new zzq(i9, str, th2);
        for (r<?> rVar : this.f7423d) {
            rVar.c(zzqVar);
        }
        this.f7423d.clear();
        for (int i11 = 0; i11 < this.f7424e.size(); i11++) {
            this.f7424e.valueAt(i11).c(zzqVar);
        }
        this.f7424e.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        t.e(this.f7425f).execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.j
            @Override // java.lang.Runnable
            public final void run() {
                final r<?> poll;
                final o oVar = o.this;
                while (true) {
                    synchronized (oVar) {
                        if (oVar.f7420a != 2) {
                            return;
                        }
                        if (oVar.f7423d.isEmpty()) {
                            oVar.f();
                            return;
                        }
                        poll = oVar.f7423d.poll();
                        oVar.f7424e.put(poll.f7428a, poll);
                        t.e(oVar.f7425f).schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.m
                            @Override // java.lang.Runnable
                            public final void run() {
                                o.this.e(poll.f7428a);
                            }
                        }, 30L, TimeUnit.SECONDS);
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String valueOf = String.valueOf(poll);
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 8);
                        sb2.append("Sending ");
                        sb2.append(valueOf);
                        Log.d("MessengerIpcClient", sb2.toString());
                    }
                    Context a10 = t.a(oVar.f7425f);
                    Messenger messenger = oVar.f7421b;
                    Message obtain = Message.obtain();
                    obtain.what = poll.f7430c;
                    obtain.arg1 = poll.f7428a;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", poll.b());
                    bundle.putString("pkg", a10.getPackageName());
                    bundle.putBundle("data", poll.f7431d);
                    obtain.setData(bundle);
                    try {
                        oVar.f7422c.a(obtain);
                    } catch (RemoteException e10) {
                        oVar.a(2, e10.getMessage());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void d() {
        if (this.f7420a == 1) {
            a(1, "Timed out while binding");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void e(int i9) {
        r<?> rVar = this.f7424e.get(i9);
        if (rVar != null) {
            StringBuilder sb2 = new StringBuilder(31);
            sb2.append("Timing out request: ");
            sb2.append(i9);
            Log.w("MessengerIpcClient", sb2.toString());
            this.f7424e.remove(i9);
            rVar.c(new zzq(3, "Timed out waiting for response", null));
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void f() {
        if (this.f7420a == 2 && this.f7423d.isEmpty() && this.f7424e.size() == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
            }
            this.f7420a = 3;
            d4.a.b().c(t.a(this.f7425f), this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean g(r<?> rVar) {
        int i9 = this.f7420a;
        if (i9 != 0) {
            if (i9 == 1) {
                this.f7423d.add(rVar);
                return true;
            } else if (i9 != 2) {
                return false;
            } else {
                this.f7423d.add(rVar);
                c();
                return true;
            }
        }
        this.f7423d.add(rVar);
        com.google.android.gms.common.internal.p.n(this.f7420a == 0);
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Starting bind to GmsCore");
        }
        this.f7420a = 1;
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        try {
            if (!d4.a.b().a(t.a(this.f7425f), intent, this, 1)) {
                a(0, "Unable to bind to service");
            } else {
                t.e(this.f7425f).schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        o.this.d();
                    }
                }, 30L, TimeUnit.SECONDS);
            }
        } catch (SecurityException e10) {
            b(0, "Unable to bind to service", e10);
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        t.e(this.f7425f).execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.l
            @Override // java.lang.Runnable
            public final void run() {
                o oVar = o.this;
                IBinder iBinder2 = iBinder;
                synchronized (oVar) {
                    try {
                        if (iBinder2 == null) {
                            oVar.a(0, "Null service connection");
                            return;
                        }
                        try {
                            oVar.f7422c = new p(iBinder2);
                            oVar.f7420a = 2;
                            oVar.c();
                        } catch (RemoteException e10) {
                            oVar.a(0, e10.getMessage());
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        t.e(this.f7425f).execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.i
            @Override // java.lang.Runnable
            public final void run() {
                o.this.a(2, "Service disconnected");
            }
        });
    }
}
