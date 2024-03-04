package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class pd implements Executor {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Executor f8976a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ cb f8977b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pd(Executor executor, cb cbVar) {
        this.f8976a = executor;
        this.f8977b = cbVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f8976a.execute(runnable);
        } catch (RejectedExecutionException e10) {
            this.f8977b.J(e10);
        }
    }
}
