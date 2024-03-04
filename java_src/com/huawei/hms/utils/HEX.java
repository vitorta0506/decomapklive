package com.huawei.hms.utils;
/* loaded from: classes4.dex */
public final class HEX {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f27852a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b  reason: collision with root package name */
    public static final char[] f27853b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static char[] a(byte[] bArr, char[] cArr) {
        int length = bArr.length;
        char[] cArr2 = new char[length << 1];
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i9 + 1;
            cArr2[i9] = cArr[(bArr[i10] & 240) >>> 4];
            i9 = i11 + 1;
            cArr2[i11] = cArr[bArr[i10] & 15];
        }
        return cArr2;
    }

    public static char[] encodeHex(byte[] bArr) {
        return encodeHex(bArr, false);
    }

    public static String encodeHexString(byte[] bArr, boolean z10) {
        return new String(encodeHex(bArr, z10));
    }

    public static char[] encodeHex(byte[] bArr, boolean z10) {
        return a(bArr, z10 ? f27853b : f27852a);
    }
}
