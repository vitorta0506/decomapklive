package com.google.android.gms.internal.recaptcha;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ob {

    /* renamed from: c  reason: collision with root package name */
    static final ob f8942c = new ob(false);
    @NullableDecl

    /* renamed from: a  reason: collision with root package name */
    volatile Thread f8943a;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    volatile ob f8944b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ob() {
        db dbVar;
        dbVar = cb.f8561f;
        dbVar.b(this, Thread.currentThread());
    }

    ob(boolean z10) {
    }
}
