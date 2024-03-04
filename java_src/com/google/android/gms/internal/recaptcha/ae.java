package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ae extends md<nd> {

    /* renamed from: c  reason: collision with root package name */
    private final cc f8496c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ce f8497d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(ce ceVar, cc ccVar) {
        this.f8497d = ceVar;
        Objects.requireNonNull(ccVar);
        this.f8496c = ccVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final /* bridge */ /* synthetic */ nd b() throws Exception {
        nd zza = this.f8496c.zza();
        z7.d(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f8496c);
        return zza;
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final String c() {
        return this.f8496c.toString();
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final void f(Throwable th2) {
        this.f8497d.J(th2);
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final /* bridge */ /* synthetic */ void g(nd ndVar) {
        this.f8497d.n(ndVar);
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final boolean h() {
        return this.f8497d.isDone();
    }
}
