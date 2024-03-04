package com.tencent.liteav.base.system;

import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
final /* synthetic */ class b implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final b f30968a = new b();

    private b() {
    }

    public static Callable a() {
        return f30968a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return a.d();
    }
}
