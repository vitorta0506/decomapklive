package com.tencent.liteav.base.system;

import android.os.Build;
import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
final /* synthetic */ class i implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final i f30975a = new i();

    private i() {
    }

    public static Callable a() {
        return f30975a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        str = Build.BRAND;
        return str;
    }
}
