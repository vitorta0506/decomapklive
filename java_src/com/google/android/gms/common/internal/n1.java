package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class n1 implements ServiceConnection, r1 {

    /* renamed from: a  reason: collision with root package name */
    private final Map f7760a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private int f7761b = 2;

    /* renamed from: c  reason: collision with root package name */
    private boolean f7762c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private IBinder f7763d;

    /* renamed from: e  reason: collision with root package name */
    private final m1 f7764e;

    /* renamed from: f  reason: collision with root package name */
    private ComponentName f7765f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ q1 f7766g;

    public n1(q1 q1Var, m1 m1Var) {
        this.f7766g = q1Var;
        this.f7764e = m1Var;
    }

    public final int a() {
        return this.f7761b;
    }

    public final ComponentName b() {
        return this.f7765f;
    }

    @Nullable
    public final IBinder c() {
        return this.f7763d;
    }

    public final void d(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.f7760a.put(serviceConnection, serviceConnection2);
    }

    public final void e(String str, @Nullable Executor executor) {
        d4.a aVar;
        Context context;
        Context context2;
        d4.a aVar2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j10;
        this.f7761b = 3;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (e4.m.l()) {
            StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder(vmPolicy).permitUnsafeIntentLaunch().build());
        }
        try {
            q1 q1Var = this.f7766g;
            aVar = q1Var.f7777j;
            context = q1Var.f7774g;
            m1 m1Var = this.f7764e;
            context2 = q1Var.f7774g;
            boolean d10 = aVar.d(context, str, m1Var.c(context2), this, this.f7764e.a(), executor);
            this.f7762c = d10;
            if (d10) {
                handler = this.f7766g.f7775h;
                Message obtainMessage = handler.obtainMessage(1, this.f7764e);
                handler2 = this.f7766g.f7775h;
                j10 = this.f7766g.f7779l;
                handler2.sendMessageDelayed(obtainMessage, j10);
            } else {
                this.f7761b = 2;
                try {
                    q1 q1Var2 = this.f7766g;
                    aVar2 = q1Var2.f7777j;
                    context3 = q1Var2.f7774g;
                    aVar2.c(context3, this);
                } catch (IllegalArgumentException unused) {
                }
            }
        } finally {
            StrictMode.setVmPolicy(vmPolicy);
        }
    }

    public final void f(ServiceConnection serviceConnection, String str) {
        this.f7760a.remove(serviceConnection);
    }

    public final void g(String str) {
        Handler handler;
        d4.a aVar;
        Context context;
        handler = this.f7766g.f7775h;
        handler.removeMessages(1, this.f7764e);
        q1 q1Var = this.f7766g;
        aVar = q1Var.f7777j;
        context = q1Var.f7774g;
        aVar.c(context, this);
        this.f7762c = false;
        this.f7761b = 2;
    }

    public final boolean h(ServiceConnection serviceConnection) {
        return this.f7760a.containsKey(serviceConnection);
    }

    public final boolean i() {
        return this.f7760a.isEmpty();
    }

    public final boolean j() {
        return this.f7762c;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f7766g.f7773f;
        synchronized (hashMap) {
            handler = this.f7766g.f7775h;
            handler.removeMessages(1, this.f7764e);
            this.f7763d = iBinder;
            this.f7765f = componentName;
            for (ServiceConnection serviceConnection : this.f7760a.values()) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f7761b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f7766g.f7773f;
        synchronized (hashMap) {
            handler = this.f7766g.f7775h;
            handler.removeMessages(1, this.f7764e);
            this.f7763d = null;
            this.f7765f = componentName;
            for (ServiceConnection serviceConnection : this.f7760a.values()) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f7761b = 2;
        }
    }
}
