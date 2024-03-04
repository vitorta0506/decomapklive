package com.android.billingclient.api;

import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class o implements Callable<Void> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f3993a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ i f3994b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ b f3995c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(b bVar, String str, i iVar) {
        this.f3995c = bVar;
        this.f3993a = str;
        this.f3994b = iVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() throws Exception {
        t x10 = b.x(this.f3995c, this.f3993a);
        this.f3994b.a(x10.a(), x10.b());
        return null;
    }
}
