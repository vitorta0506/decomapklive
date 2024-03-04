package com.tencent.liteav.base.system;

import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
final /* synthetic */ class d implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final d f30970a = new d();

    private d() {
    }

    public static Callable a() {
        return f30970a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return a.b();
    }
}
