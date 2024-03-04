package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes2.dex */
final class ce<V> extends sc<V> implements RunnableFuture<V> {

    /* renamed from: h  reason: collision with root package name */
    private volatile md<?> f8567h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(cc<V> ccVar) {
        this.f8567h = new ae(this, ccVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> ce<V> S(Runnable runnable, V v10) {
        return new ce<>(Executors.callable(runnable, v10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.recaptcha.cb
    public final String k() {
        md<?> mdVar = this.f8567h;
        if (mdVar != null) {
            String valueOf = String.valueOf(mdVar);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 7);
            sb2.append("task=[");
            sb2.append(valueOf);
            sb2.append("]");
            return sb2.toString();
        }
        return super.k();
    }

    @Override // com.google.android.gms.internal.recaptcha.cb
    protected final void l() {
        md<?> mdVar;
        if (K() && (mdVar = this.f8567h) != null) {
            mdVar.i();
        }
        this.f8567h = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        md<?> mdVar = this.f8567h;
        if (mdVar != null) {
            mdVar.run();
        }
        this.f8567h = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(Callable<V> callable) {
        this.f8567h = new be(this, callable);
    }
}
