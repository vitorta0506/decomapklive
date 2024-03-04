package com.xiaomi.push;
/* loaded from: classes5.dex */
public final class u2 extends v2 {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f37494a;

    /* renamed from: b  reason: collision with root package name */
    private int f37495b;

    /* renamed from: c  reason: collision with root package name */
    private int f37496c;

    @Override // com.xiaomi.push.v2
    public int a() {
        return this.f37495b;
    }

    @Override // com.xiaomi.push.v2
    public int b(byte[] bArr, int i9, int i10) {
        int f10 = f();
        if (i10 > f10) {
            i10 = f10;
        }
        if (i10 > 0) {
            System.arraycopy(this.f37494a, this.f37495b, bArr, i9, i10);
            c(i10);
        }
        return i10;
    }

    @Override // com.xiaomi.push.v2
    public void c(int i9) {
        this.f37495b += i9;
    }

    @Override // com.xiaomi.push.v2
    public void d(byte[] bArr, int i9, int i10) {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    @Override // com.xiaomi.push.v2
    public byte[] e() {
        return this.f37494a;
    }

    @Override // com.xiaomi.push.v2
    public int f() {
        return this.f37496c - this.f37495b;
    }

    public void h(byte[] bArr) {
        i(bArr, 0, bArr.length);
    }

    public void i(byte[] bArr, int i9, int i10) {
        this.f37494a = bArr;
        this.f37495b = i9;
        this.f37496c = i9 + i10;
    }
}
