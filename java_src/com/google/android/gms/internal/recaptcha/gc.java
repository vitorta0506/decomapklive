package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class gc extends ic<nd> {

    /* renamed from: e  reason: collision with root package name */
    private final cc f8712e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ jc f8713f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gc(jc jcVar, cc ccVar, Executor executor) {
        super(jcVar, executor);
        this.f8713f = jcVar;
        this.f8712e = ccVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final /* bridge */ /* synthetic */ Object b() throws Exception {
        nd zza = this.f8712e.zza();
        z7.d(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f8712e);
        return zza;
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final String c() {
        return this.f8712e.toString();
    }

    @Override // com.google.android.gms.internal.recaptcha.ic
    final /* bridge */ /* synthetic */ void j(nd ndVar) {
        this.f8713f.n(ndVar);
    }
}
