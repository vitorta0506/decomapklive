package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
/* loaded from: classes2.dex */
final class sd extends lb<Void> implements Runnable {

    /* renamed from: h  reason: collision with root package name */
    private final Runnable f9045h;

    public sd(Runnable runnable) {
        Objects.requireNonNull(runnable);
        this.f9045h = runnable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.recaptcha.cb
    public final String k() {
        String valueOf = String.valueOf(this.f9045h);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 7);
        sb2.append("task=[");
        sb2.append(valueOf);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f9045h.run();
        } catch (Throwable th2) {
            J(th2);
            i8.a(th2);
            throw new RuntimeException(th2);
        }
    }
}
