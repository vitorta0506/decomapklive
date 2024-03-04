package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
/* loaded from: classes2.dex */
final class fb {

    /* renamed from: b  reason: collision with root package name */
    static final fb f8679b = new fb(new a("Failure occurred while trying to finish a future."));

    /* renamed from: a  reason: collision with root package name */
    final Throwable f8680a;

    /* loaded from: classes2.dex */
    class a extends Throwable {
        a(String str) {
            super("Failure occurred while trying to finish a future.");
        }

        @Override // java.lang.Throwable
        public final synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public fb(Throwable th2) {
        Objects.requireNonNull(th2);
        this.f8680a = th2;
    }
}
