package com.tencent.liteav.base.system;

import android.os.Build;
import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
final /* synthetic */ class j implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final j f30976a = new j();

    private j() {
    }

    public static Callable a() {
        return f30976a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        str = Build.MANUFACTURER;
        return str;
    }
}
