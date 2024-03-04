package com.xiaomi.push;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final a f36328c = new a(new byte[0]);

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f36329a;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f36330b = 0;

    private a(byte[] bArr) {
        this.f36329a = bArr;
    }

    public static a b(byte[] bArr) {
        return c(bArr, 0, bArr.length);
    }

    public static a c(byte[] bArr, int i9, int i10) {
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, i9, bArr2, 0, i10);
        return new a(bArr2);
    }

    public int a() {
        return this.f36329a.length;
    }

    public byte[] d() {
        byte[] bArr = this.f36329a;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            byte[] bArr = this.f36329a;
            int length = bArr.length;
            byte[] bArr2 = ((a) obj).f36329a;
            if (length != bArr2.length) {
                return false;
            }
            for (int i9 = 0; i9 < length; i9++) {
                if (bArr[i9] != bArr2[i9]) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i9 = this.f36330b;
        if (i9 == 0) {
            byte[] bArr = this.f36329a;
            int length = bArr.length;
            for (byte b10 : bArr) {
                length = (length * 31) + b10;
            }
            i9 = length == 0 ? 1 : length;
            this.f36330b = i9;
        }
        return i9;
    }
}
