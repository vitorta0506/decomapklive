package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Objects;
import kotlin.UByte;
/* loaded from: classes7.dex */
public class e implements c {

    /* renamed from: a  reason: collision with root package name */
    protected final byte[] f56272a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: b  reason: collision with root package name */
    protected final byte[] f56273b = new byte[128];

    public e() {
        f();
    }

    private static boolean e(char c10) {
        return c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == ' ';
    }

    @Override // org.bouncycastle.util.encoders.c
    public int a(byte[] bArr, int i9, int i10, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[72];
        while (i10 > 0) {
            int min = Math.min(36, i10);
            outputStream.write(bArr2, 0, d(bArr, i9, min, bArr2, 0));
            i9 += min;
            i10 -= min;
        }
        return i10 * 2;
    }

    public int b(String str, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[36];
        int length = str.length();
        while (length > 0 && e(str.charAt(length - 1))) {
            length--;
        }
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i9 < length) {
            while (i9 < length && e(str.charAt(i9))) {
                i9++;
            }
            int i12 = i9 + 1;
            byte b10 = this.f56273b[str.charAt(i9)];
            while (i12 < length && e(str.charAt(i12))) {
                i12++;
            }
            int i13 = i12 + 1;
            byte b11 = this.f56273b[str.charAt(i12)];
            if ((b10 | b11) < 0) {
                throw new IOException("invalid characters encountered in Hex string");
            }
            int i14 = i10 + 1;
            bArr[i10] = (byte) ((b10 << 4) | b11);
            if (i14 == 36) {
                outputStream.write(bArr);
                i10 = 0;
            } else {
                i10 = i14;
            }
            i11++;
            i9 = i13;
        }
        if (i10 > 0) {
            outputStream.write(bArr, 0, i10);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] c(String str, int i9, int i10) throws IOException {
        Objects.requireNonNull(str, "'str' cannot be null");
        if (i9 < 0 || i10 < 0 || i9 > str.length() - i10) {
            throw new IndexOutOfBoundsException("invalid offset and/or length specified");
        }
        if ((i10 & 1) == 0) {
            int i11 = i10 >>> 1;
            byte[] bArr = new byte[i11];
            int i12 = 0;
            while (i12 < i11) {
                int i13 = i9 + 1;
                int i14 = i13 + 1;
                int i15 = (this.f56273b[str.charAt(i9)] << 4) | this.f56273b[str.charAt(i13)];
                if (i15 < 0) {
                    throw new IOException("invalid characters encountered in Hex string");
                }
                bArr[i12] = (byte) i15;
                i12++;
                i9 = i14;
            }
            return bArr;
        }
        throw new IOException("a hexadecimal encoding must have an even number of characters");
    }

    public int d(byte[] bArr, int i9, int i10, byte[] bArr2, int i11) throws IOException {
        int i12 = i10 + i9;
        int i13 = i11;
        while (i9 < i12) {
            int i14 = i9 + 1;
            int i15 = bArr[i9] & UByte.MAX_VALUE;
            int i16 = i13 + 1;
            byte[] bArr3 = this.f56272a;
            bArr2[i13] = bArr3[i15 >>> 4];
            i13 = i16 + 1;
            bArr2[i16] = bArr3[i15 & 15];
            i9 = i14;
        }
        return i13 - i11;
    }

    protected void f() {
        int i9 = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f56273b;
            if (i10 >= bArr.length) {
                break;
            }
            bArr[i10] = -1;
            i10++;
        }
        while (true) {
            byte[] bArr2 = this.f56272a;
            if (i9 >= bArr2.length) {
                byte[] bArr3 = this.f56273b;
                bArr3[65] = bArr3[97];
                bArr3[66] = bArr3[98];
                bArr3[67] = bArr3[99];
                bArr3[68] = bArr3[100];
                bArr3[69] = bArr3[101];
                bArr3[70] = bArr3[102];
                return;
            }
            this.f56273b[bArr2[i9]] = (byte) i9;
            i9++;
        }
    }
}
