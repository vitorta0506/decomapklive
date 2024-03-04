package com.android.billingclient.api;

import com.android.billingclient.api.Purchase;
import com.google.android.gms.internal.play_billing.zzp;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class n implements Callable<Void> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f3989a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ j f3990b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ b f3991c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(b bVar, String str, j jVar) {
        this.f3991c = bVar;
        this.f3989a = str;
        this.f3990b = jVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() throws Exception {
        Purchase.a z10 = b.z(this.f3991c, this.f3989a);
        if (z10.b() != null) {
            this.f3990b.a(z10.a(), z10.b());
            return null;
        }
        this.f3990b.a(z10.a(), zzp.zzg());
        return null;
    }
}
