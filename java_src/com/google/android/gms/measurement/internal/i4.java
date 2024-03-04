package com.google.android.gms.measurement.internal;

import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class i4 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private final String f9486a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ l4 f9487b;

    public i4(l4 l4Var, String str) {
        this.f9487b = l4Var;
        com.google.android.gms.common.internal.p.j(str);
        this.f9486a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th2) {
        this.f9487b.f9432a.b().r().b(this.f9486a, th2);
    }
}
