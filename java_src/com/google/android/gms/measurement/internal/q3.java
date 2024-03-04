package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class q3 extends BroadcastReceiver {

    /* renamed from: d  reason: collision with root package name */
    static final String f9775d = q3.class.getName();

    /* renamed from: a  reason: collision with root package name */
    private final d9 f9776a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9777b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9778c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q3(d9 d9Var) {
        com.google.android.gms.common.internal.p.j(d9Var);
        this.f9776a = d9Var;
    }

    @WorkerThread
    public final void b() {
        this.f9776a.g();
        this.f9776a.a().h();
        if (this.f9777b) {
            return;
        }
        this.f9776a.f().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f9778c = this.f9776a.Y().m();
        this.f9776a.b().v().b("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f9778c));
        this.f9777b = true;
    }

    @WorkerThread
    public final void c() {
        this.f9776a.g();
        this.f9776a.a().h();
        this.f9776a.a().h();
        if (this.f9777b) {
            this.f9776a.b().v().a("Unregistering connectivity change receiver");
            this.f9777b = false;
            this.f9778c = false;
            try {
                this.f9776a.f().unregisterReceiver(this);
            } catch (IllegalArgumentException e10) {
                this.f9776a.b().r().b("Failed to unregister the network broadcast receiver", e10);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public final void onReceive(Context context, Intent intent) {
        this.f9776a.g();
        String action = intent.getAction();
        this.f9776a.b().v().b("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean m10 = this.f9776a.Y().m();
            if (this.f9778c != m10) {
                this.f9778c = m10;
                this.f9776a.a().z(new p3(this, m10));
                return;
            }
            return;
        }
        this.f9776a.b().w().b("NetworkBroadcastReceiver received unknown action", action);
    }
}
