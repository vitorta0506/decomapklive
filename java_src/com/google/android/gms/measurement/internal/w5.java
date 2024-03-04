package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class w5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f9939a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6 f9940b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w5(m6 m6Var, Bundle bundle) {
        this.f9940b = m6Var;
        this.f9939a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m6 m6Var = this.f9940b;
        Bundle bundle = this.f9939a;
        m6Var.h();
        m6Var.i();
        com.google.android.gms.common.internal.p.j(bundle);
        String f10 = com.google.android.gms.common.internal.p.f(bundle.getString("name"));
        if (!m6Var.f9432a.o()) {
            m6Var.f9432a.b().v().a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            m6Var.f9432a.L().s(new zzac(bundle.getString("app_id"), "", new zzlc(f10, 0L, null, ""), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), m6Var.f9432a.N().w0(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), "", bundle.getLong("creation_timestamp"), true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
