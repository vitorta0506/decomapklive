package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class yi extends xi {
    @Override // com.google.android.gms.internal.recaptcha.xi
    final int a(int i9, byte[] bArr, int i10, int i11) {
        int i12 = 0;
        while (i12 < i11 && bArr[i12] >= 0) {
            i12++;
        }
        if (i12 >= i11) {
            return 0;
        }
        while (i12 < i11) {
            int i13 = i12 + 1;
            byte b10 = bArr[i12];
            if (b10 < 0) {
                if (b10 < -32) {
                    if (i13 < i11) {
                        if (b10 >= -62) {
                            i12 = i13 + 1;
                            if (bArr[i13] > -65) {
                            }
                        }
                        return -1;
                    }
                    return b10;
                }
                if (b10 < -16) {
                    if (i13 >= i11 - 1) {
                        return aj.a(bArr, i13, i11);
                    }
                    int i14 = i13 + 1;
                    byte b11 = bArr[i13];
                    if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                        i12 = i14 + 1;
                        if (bArr[i14] > -65) {
                        }
                    }
                } else if (i13 >= i11 - 2) {
                    return aj.a(bArr, i13, i11);
                } else {
                    int i15 = i13 + 1;
                    byte b12 = bArr[i13];
                    if (b12 <= -65 && (((b10 << 28) + (b12 + 112)) >> 30) == 0) {
                        int i16 = i15 + 1;
                        if (bArr[i15] <= -65) {
                            i13 = i16 + 1;
                            if (bArr[i16] > -65) {
                            }
                        }
                    }
                }
                return -1;
            }
            i12 = i13;
        }
        return 0;
    }
}
