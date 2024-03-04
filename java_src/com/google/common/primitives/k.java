package com.google.common.primitives;

import com.google.common.base.o;
import kotlin.UByte;
/* loaded from: classes2.dex */
public final class k {
    public static byte a(long j10) {
        o.j((j10 >> 8) == 0, "out of range: %s", j10);
        return (byte) j10;
    }

    public static int b(byte b10) {
        return b10 & UByte.MAX_VALUE;
    }
}
