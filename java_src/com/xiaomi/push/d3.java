package com.xiaomi.push;

import android.content.Context;
import kotlin.UByte;
/* loaded from: classes5.dex */
public class d3 {

    /* renamed from: a  reason: collision with root package name */
    static final char[] f36493a = "0123456789ABCDEF".toCharArray();

    public static String a(byte[] bArr, int i9, int i10) {
        StringBuilder sb2 = new StringBuilder(i10 * 2);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = bArr[i9 + i11] & UByte.MAX_VALUE;
            char[] cArr = f36493a;
            sb2.append(cArr[i12 >> 4]);
            sb2.append(cArr[i12 & 15]);
        }
        return sb2.toString();
    }

    public static boolean b(Context context) {
        return c3.f36432a;
    }
}
