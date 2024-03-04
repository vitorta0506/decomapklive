package com.tencent.liteav.base.system;

import android.os.Build;
import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
final /* synthetic */ class m implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final m f30979a = new m();

    private m() {
    }

    public static Callable a() {
        return f30979a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Integer valueOf;
        valueOf = Integer.valueOf(Build.VERSION.SDK_INT);
        return valueOf;
    }
}
