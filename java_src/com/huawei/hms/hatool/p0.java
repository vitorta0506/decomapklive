package com.huawei.hms.hatool;
/* loaded from: classes4.dex */
public class p0 {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f27577a;

    /* renamed from: b  reason: collision with root package name */
    public int f27578b = 0;

    public p0(int i9) {
        this.f27577a = null;
        this.f27577a = new byte[i9];
    }

    public void a(byte[] bArr, int i9) {
        if (i9 <= 0) {
            return;
        }
        byte[] bArr2 = this.f27577a;
        int length = bArr2.length;
        int i10 = this.f27578b;
        if (length - i10 >= i9) {
            System.arraycopy(bArr, 0, bArr2, i10, i9);
        } else {
            byte[] bArr3 = new byte[(bArr2.length + i9) << 1];
            System.arraycopy(bArr2, 0, bArr3, 0, i10);
            System.arraycopy(bArr, 0, bArr3, this.f27578b, i9);
            this.f27577a = bArr3;
        }
        this.f27578b += i9;
    }

    public byte[] a() {
        int i9 = this.f27578b;
        if (i9 <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i9];
        System.arraycopy(this.f27577a, 0, bArr, 0, i9);
        return bArr;
    }

    public int b() {
        return this.f27578b;
    }
}
