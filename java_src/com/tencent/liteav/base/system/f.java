package com.tencent.liteav.base.system;

import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
final /* synthetic */ class f implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final f f30972a = new f();

    private f() {
    }

    public static Callable a() {
        return f30972a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String a10;
        a10 = p.a(LiteavSystemInfo.sAppPackageName.a());
        return a10;
    }
}
