package com.google.android.gms.internal.recaptcha;

import sun.misc.Unsafe;
/* loaded from: classes2.dex */
public final /* synthetic */ class mb {
    public static /* synthetic */ boolean a(Unsafe unsafe, Object obj, long j10, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j10, obj2, obj3)) {
            if (unsafe.getObject(obj, j10) != obj2) {
                return false;
            }
        }
        return true;
    }
}
