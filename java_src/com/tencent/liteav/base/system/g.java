package com.tencent.liteav.base.system;

import com.tencent.liteav.base.ContextUtils;
import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
final /* synthetic */ class g implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final g f30973a = new g();

    private g() {
    }

    public static Callable a() {
        return f30973a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Boolean valueOf;
        valueOf = Boolean.valueOf(com.tencent.liteav.base.util.i.a(ContextUtils.getApplicationContext()));
        return valueOf;
    }
}
