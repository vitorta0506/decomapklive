package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class be extends md {

    /* renamed from: c  reason: collision with root package name */
    private final Callable f8531c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ce f8532d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public be(ce ceVar, Callable callable) {
        this.f8532d = ceVar;
        Objects.requireNonNull(callable);
        this.f8531c = callable;
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final Object b() throws Exception {
        return this.f8531c.call();
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final String c() {
        return this.f8531c.toString();
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final void f(Throwable th2) {
        this.f8532d.J(th2);
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final void g(Object obj) {
        this.f8532d.H(obj);
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final boolean h() {
        return this.f8532d.isDone();
    }
}
