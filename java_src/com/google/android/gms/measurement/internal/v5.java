package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class v5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f9919a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6 f9920b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v5(m6 m6Var, Bundle bundle) {
        this.f9920b = m6Var;
        this.f9919a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m6 m6Var = this.f9920b;
        Bundle bundle = this.f9919a;
        m6Var.h();
        m6Var.i();
        com.google.android.gms.common.internal.p.j(bundle);
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        com.google.android.gms.common.internal.p.f(string);
        com.google.android.gms.common.internal.p.f(string2);
        com.google.android.gms.common.internal.p.j(bundle.get("value"));
        if (!m6Var.f9432a.o()) {
            m6Var.f9432a.b().v().a("Conditional property not set since app measurement is disabled");
            return;
        }
        zzlc zzlcVar = new zzlc(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            zzaw w02 = m6Var.f9432a.N().w0(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true, true);
            m6Var.f9432a.L().s(new zzac(bundle.getString("app_id"), string2, zzlcVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), m6Var.f9432a.N().w0(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true, true), bundle.getLong("trigger_timeout"), w02, bundle.getLong("time_to_live"), m6Var.f9432a.N().w0(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
