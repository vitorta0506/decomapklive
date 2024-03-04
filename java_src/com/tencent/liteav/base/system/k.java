package com.tencent.liteav.base.system;

import android.os.Build;
import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
final /* synthetic */ class k implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final k f30977a = new k();

    private k() {
    }

    public static Callable a() {
        return f30977a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        str = Build.HARDWARE;
        return str;
    }
}
