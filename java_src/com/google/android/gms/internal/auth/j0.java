package com.google.android.gms.internal.auth;
/* loaded from: classes2.dex */
final class j0 extends i0 {
    @Override // com.google.android.gms.internal.auth.i0
    final int a(int i9, byte[] bArr, int i10, int i11) {
        while (i10 < i11 && bArr[i10] >= 0) {
            i10++;
        }
        if (i10 >= i11) {
            return 0;
        }
        while (i10 < i11) {
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 < 0) {
                if (b10 < -32) {
                    if (i12 < i11) {
                        if (b10 >= -62) {
                            i10 = i12 + 1;
                            if (bArr[i12] > -65) {
                            }
                        }
                        return -1;
                    }
                    return b10;
                }
                if (b10 < -16) {
                    if (i12 >= i11 - 1) {
                        return k0.a(bArr, i12, i11);
                    }
                    int i13 = i12 + 1;
                    byte b11 = bArr[i12];
                    if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                        i10 = i13 + 1;
                        if (bArr[i13] > -65) {
                        }
                    }
                } else if (i12 >= i11 - 2) {
                    return k0.a(bArr, i12, i11);
                } else {
                    int i14 = i12 + 1;
                    byte b12 = bArr[i12];
                    if (b12 <= -65 && (((b10 << 28) + (b12 + 112)) >> 30) == 0) {
                        int i15 = i14 + 1;
                        if (bArr[i14] <= -65) {
                            i12 = i15 + 1;
                            if (bArr[i15] > -65) {
                            }
                        }
                    }
                }
                return -1;
            }
            i10 = i12;
        }
        return 0;
    }
}
