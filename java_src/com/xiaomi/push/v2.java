package com.xiaomi.push;
/* loaded from: classes5.dex */
public abstract class v2 {
    public int a() {
        return 0;
    }

    public abstract int b(byte[] bArr, int i9, int i10);

    public void c(int i9) {
    }

    public abstract void d(byte[] bArr, int i9, int i10);

    public byte[] e() {
        return null;
    }

    public int f() {
        return -1;
    }

    public int g(byte[] bArr, int i9, int i10) {
        int i11 = 0;
        while (i11 < i10) {
            int b10 = b(bArr, i9 + i11, i10 - i11);
            if (b10 <= 0) {
                throw new ez("Cannot read. Remote side has closed. Tried to read " + i10 + " bytes, but only got " + i11 + " bytes.");
            }
            i11 += b10;
        }
        return i11;
    }
}
