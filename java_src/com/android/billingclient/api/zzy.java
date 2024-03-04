package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.android.billingclient.api.e;
/* loaded from: classes.dex */
final class zzy extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h f4037a;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i9, Bundle bundle) {
        e.a c10 = e.c();
        c10.c(i9);
        c10.b(com.google.android.gms.internal.play_billing.a.g(bundle, "BillingClient"));
        this.f4037a.a(c10.a());
    }
}
