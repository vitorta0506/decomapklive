package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class gb {

    /* renamed from: d  reason: collision with root package name */
    static final gb f8708d = new gb(null, null);

    /* renamed from: a  reason: collision with root package name */
    final Runnable f8709a;

    /* renamed from: b  reason: collision with root package name */
    final Executor f8710b;
    @NullableDecl

    /* renamed from: c  reason: collision with root package name */
    gb f8711c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gb(Runnable runnable, Executor executor) {
        this.f8709a = runnable;
        this.f8710b = executor;
    }
}
