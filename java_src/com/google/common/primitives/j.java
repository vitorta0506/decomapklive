package com.google.common.primitives;

import com.google.common.base.o;
/* loaded from: classes2.dex */
public final class j {
    public static byte a(long j10) {
        byte b10 = (byte) j10;
        o.j(((long) b10) == j10, "Out of range: %s", j10);
        return b10;
    }
}
