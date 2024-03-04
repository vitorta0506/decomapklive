package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class ic<T> extends md<T> {

    /* renamed from: c  reason: collision with root package name */
    private final Executor f8761c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ jc f8762d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ic(jc jcVar, Executor executor) {
        this.f8762d = jcVar;
        Objects.requireNonNull(executor);
        this.f8761c = executor;
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final void f(Throwable th2) {
        jc.k0(this.f8762d, null);
        if (th2 instanceof ExecutionException) {
            this.f8762d.J(((ExecutionException) th2).getCause());
        } else if (th2 instanceof CancellationException) {
            this.f8762d.cancel(false);
        } else {
            this.f8762d.J(th2);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final void g(T t10) {
        jc.k0(this.f8762d, null);
        j(t10);
    }

    @Override // com.google.android.gms.internal.recaptcha.md
    final boolean h() {
        return this.f8762d.isDone();
    }

    abstract void j(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        try {
            this.f8761c.execute(this);
        } catch (RejectedExecutionException e10) {
            this.f8762d.J(e10);
        }
    }
}
