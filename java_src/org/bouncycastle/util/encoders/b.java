package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;
import kotlin.UByte;
/* loaded from: classes7.dex */
public class b implements c {

    /* renamed from: a  reason: collision with root package name */
    protected final byte[] f56268a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: b  reason: collision with root package name */
    protected byte f56269b = 61;

    /* renamed from: c  reason: collision with root package name */
    protected final byte[] f56270c = new byte[128];

    public b() {
        c();
    }

    @Override // org.bouncycastle.util.encoders.c
    public int a(byte[] bArr, int i9, int i10, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[72];
        while (i10 > 0) {
            int min = Math.min(54, i10);
            outputStream.write(bArr2, 0, b(bArr, i9, min, bArr2, 0));
            i9 += min;
            i10 -= min;
        }
        return ((i10 + 2) / 3) * 4;
    }

    public int b(byte[] bArr, int i9, int i10, byte[] bArr2, int i11) throws IOException {
        int i12 = (i9 + i10) - 2;
        int i13 = i9;
        int i14 = i11;
        while (i13 < i12) {
            int i15 = i13 + 1;
            byte b10 = bArr[i13];
            int i16 = i15 + 1;
            int i17 = bArr[i15] & UByte.MAX_VALUE;
            int i18 = i16 + 1;
            int i19 = bArr[i16] & UByte.MAX_VALUE;
            int i20 = i14 + 1;
            byte[] bArr3 = this.f56268a;
            bArr2[i14] = bArr3[(b10 >>> 2) & 63];
            int i21 = i20 + 1;
            bArr2[i20] = bArr3[((b10 << 4) | (i17 >>> 4)) & 63];
            int i22 = i21 + 1;
            bArr2[i21] = bArr3[((i17 << 2) | (i19 >>> 6)) & 63];
            i14 = i22 + 1;
            bArr2[i22] = bArr3[i19 & 63];
            i13 = i18;
        }
        int i23 = i10 - (i13 - i9);
        if (i23 == 1) {
            int i24 = bArr[i13] & UByte.MAX_VALUE;
            int i25 = i14 + 1;
            byte[] bArr4 = this.f56268a;
            bArr2[i14] = bArr4[(i24 >>> 2) & 63];
            int i26 = i25 + 1;
            bArr2[i25] = bArr4[(i24 << 4) & 63];
            int i27 = i26 + 1;
            byte b11 = this.f56269b;
            bArr2[i26] = b11;
            i14 = i27 + 1;
            bArr2[i27] = b11;
        } else if (i23 == 2) {
            int i28 = bArr[i13] & UByte.MAX_VALUE;
            int i29 = bArr[i13 + 1] & UByte.MAX_VALUE;
            int i30 = i14 + 1;
            byte[] bArr5 = this.f56268a;
            bArr2[i14] = bArr5[(i28 >>> 2) & 63];
            int i31 = i30 + 1;
            bArr2[i30] = bArr5[((i28 << 4) | (i29 >>> 4)) & 63];
            int i32 = i31 + 1;
            bArr2[i31] = bArr5[(i29 << 2) & 63];
            i14 = i32 + 1;
            bArr2[i32] = this.f56269b;
        }
        return i14 - i11;
    }

    protected void c() {
        int i9 = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f56270c;
            if (i10 >= bArr.length) {
                break;
            }
            bArr[i10] = -1;
            i10++;
        }
        while (true) {
            byte[] bArr2 = this.f56268a;
            if (i9 >= bArr2.length) {
                return;
            }
            this.f56270c[bArr2[i9]] = (byte) i9;
            i9++;
        }
    }
}
