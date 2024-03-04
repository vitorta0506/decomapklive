package com.tencent.bugly.proguard;
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f30563a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i9 = 0; i9 < bArr.length; i9++) {
            byte b10 = bArr[i9];
            int i10 = i9 * 2;
            char[] cArr2 = f30563a;
            cArr[i10 + 1] = cArr2[b10 & 15];
            cArr[i10] = cArr2[((byte) (b10 >>> 4)) & 15];
        }
        return new String(cArr);
    }
}
