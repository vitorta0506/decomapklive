package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class hc extends ic {

    /* renamed from: e  reason: collision with root package name */
    private final Callable f8740e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ jc f8741f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hc(jc jcVar, Callable callable, Executor executor) {
        super(jcVar, executor);
        this.f8741f = jcVar;
        Objects.requireNonNull(callable);
        this.f8740e = callable;
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final Object b() throws Exception {
        return this.f8740e.call();
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final String c() {
        return this.f8740e.toString();
    }

    @Override // com.google.android.gms.internal.recaptcha.ic
    final void j(Object obj) {
        this.f8741f.H(obj);
    }
}
