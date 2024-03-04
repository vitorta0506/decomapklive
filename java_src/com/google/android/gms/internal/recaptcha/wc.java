package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public abstract class wc<V> extends uc<V> implements nd<V> {
    @Override // com.google.android.gms.internal.recaptcha.nd
    public final void F(Runnable runnable, Executor executor) {
        e().F(runnable, executor);
    }

    protected abstract nd<? extends V> e();
}
