package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* loaded from: classes.dex */
public final class e0 extends BroadcastReceiver {

    /* renamed from: a */
    private final k f3963a;

    /* renamed from: b */
    private boolean f3964b;

    /* renamed from: c */
    final /* synthetic */ f0 f3965c;

    public /* synthetic */ e0(f0 f0Var, k kVar, d0 d0Var) {
        this.f3965c = f0Var;
        this.f3963a = kVar;
    }

    public final void b(Context context, IntentFilter intentFilter) {
        e0 e0Var;
        if (this.f3964b) {
            return;
        }
        e0Var = this.f3965c.f3969b;
        context.registerReceiver(e0Var, intentFilter);
        this.f3964b = true;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f3963a.a(com.google.android.gms.internal.play_billing.a.f(intent, "BillingBroadcastManager"), com.google.android.gms.internal.play_billing.a.h(intent.getExtras()));
    }
}
