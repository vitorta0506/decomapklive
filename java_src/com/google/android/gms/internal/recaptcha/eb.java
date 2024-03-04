package com.google.android.gms.internal.recaptcha;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class eb {

    /* renamed from: c  reason: collision with root package name */
    static final eb f8643c;

    /* renamed from: d  reason: collision with root package name */
    static final eb f8644d;

    /* renamed from: a  reason: collision with root package name */
    final boolean f8645a;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    final Throwable f8646b;

    static {
        boolean z10;
        z10 = cb.f8559d;
        if (z10) {
            f8644d = null;
            f8643c = null;
            return;
        }
        f8644d = new eb(false, null);
        f8643c = new eb(true, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public eb(boolean z10, @NullableDecl Throwable th2) {
        this.f8645a = z10;
        this.f8646b = th2;
    }
}
