package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f3968a;

    /* renamed from: b  reason: collision with root package name */
    private final e0 f3969b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(Context context, k kVar) {
        this.f3968a = context;
        this.f3969b = new e0(this, kVar, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final k b() {
        return e0.a(this.f3969b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.f3969b.b(this.f3968a, new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED"));
    }
}
