package com.meizu.cloud.pushsdk.c.g;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f28473a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f28474b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    public static byte[] a(String str) {
        int i9;
        char charAt;
        int length = str.length();
        while (length > 0 && ((charAt = str.charAt(length - 1)) == '=' || charAt == '\n' || charAt == '\r' || charAt == ' ' || charAt == '\t')) {
            length--;
        }
        int i10 = (int) ((length * 6) / 8);
        byte[] bArr = new byte[i10];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < length; i14++) {
            char charAt2 = str.charAt(i14);
            if (charAt2 >= 'A' && charAt2 <= 'Z') {
                i9 = charAt2 - 'A';
            } else if (charAt2 >= 'a' && charAt2 <= 'z') {
                i9 = charAt2 - 'G';
            } else if (charAt2 >= '0' && charAt2 <= '9') {
                i9 = charAt2 + 4;
            } else if (charAt2 == '+' || charAt2 == '-') {
                i9 = 62;
            } else if (charAt2 == '/' || charAt2 == '_') {
                i9 = 63;
            } else {
                if (charAt2 != '\n' && charAt2 != '\r' && charAt2 != ' ' && charAt2 != '\t') {
                    return null;
                }
            }
            i12 = (i12 << 6) | ((byte) i9);
            i11++;
            if (i11 % 4 == 0) {
                int i15 = i13 + 1;
                bArr[i13] = (byte) (i12 >> 16);
                int i16 = i15 + 1;
                bArr[i15] = (byte) (i12 >> 8);
                bArr[i16] = (byte) i12;
                i13 = i16 + 1;
            }
        }
        int i17 = i11 % 4;
        if (i17 == 1) {
            return null;
        }
        if (i17 == 2) {
            bArr[i13] = (byte) ((i12 << 12) >> 16);
            i13++;
        } else if (i17 == 3) {
            int i18 = i12 << 6;
            int i19 = i13 + 1;
            bArr[i13] = (byte) (i18 >> 16);
            i13 = i19 + 1;
            bArr[i19] = (byte) (i18 >> 8);
        }
        if (i13 == i10) {
            return bArr;
        }
        byte[] bArr2 = new byte[i13];
        System.arraycopy(bArr, 0, bArr2, 0, i13);
        return bArr2;
    }
}
