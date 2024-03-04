package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b6<T> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private cc<T> f8516a;

    /* renamed from: b  reason: collision with root package name */
    private Executor f8517b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b6(cc<T> ccVar, Executor executor) {
        Objects.requireNonNull(ccVar);
        this.f8516a = ccVar;
        Objects.requireNonNull(executor);
        this.f8517b = executor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8516a = null;
        this.f8517b = null;
    }
}
