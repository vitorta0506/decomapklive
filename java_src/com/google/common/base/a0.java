package com.google.common.base;
/* loaded from: classes2.dex */
public final class a0 {
    public static void a(boolean z10) {
        if (!z10) {
            throw new VerifyException();
        }
    }

    public static void b(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new VerifyException(v.c(str, obj));
        }
    }
}
