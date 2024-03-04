package com.google.android.gms.internal.auth;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
abstract class g0 {

    /* renamed from: a  reason: collision with root package name */
    final Unsafe f7886a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(Unsafe unsafe) {
        this.f7886a = unsafe;
    }

    public final int a(Class cls) {
        return this.f7886a.arrayBaseOffset(cls);
    }

    public final int b(Class cls) {
        return this.f7886a.arrayIndexScale(cls);
    }

    public final long c(Field field) {
        return this.f7886a.objectFieldOffset(field);
    }
}
