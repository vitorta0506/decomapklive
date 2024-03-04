package com.tencent.liteav.base.system;

import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
final /* synthetic */ class e implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final e f30971a = new e();

    private e() {
    }

    public static Callable a() {
        return f30971a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return a.c();
    }
}
