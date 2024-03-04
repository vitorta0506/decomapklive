package cn.jpush.android.ac;

import cn.jpush.android.helper.Logger;
import java.math.BigInteger;
/* loaded from: classes.dex */
public class e {

    /* renamed from: d  reason: collision with root package name */
    private static final BigInteger f2839d = BigInteger.ONE.shiftLeft(64);

    /* renamed from: a  reason: collision with root package name */
    private byte[] f2840a;

    /* renamed from: b  reason: collision with root package name */
    private int f2841b;

    /* renamed from: c  reason: collision with root package name */
    private int f2842c;

    public e() {
        this(32);
    }

    public e(int i9) {
        this.f2840a = new byte[i9];
        this.f2841b = 0;
        this.f2842c = -1;
    }

    private void a(long j10, int i9) {
        long j11 = 1 << i9;
        if (j10 < 0 || j10 > j11) {
            Logger.w("OutputDataUtil", j10 + " out of range for " + i9 + " bit value max:" + j11);
        }
    }

    private void c(int i9) {
        byte[] bArr = this.f2840a;
        int length = bArr.length;
        int i10 = this.f2841b;
        if (length - i10 >= i9) {
            return;
        }
        int length2 = bArr.length * 2;
        if (length2 < i10 + i9) {
            length2 = i10 + i9;
        }
        byte[] bArr2 = new byte[length2];
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        this.f2840a = bArr2;
    }

    public void a(int i9) {
        a(i9, 8);
        c(1);
        byte[] bArr = this.f2840a;
        int i10 = this.f2841b;
        this.f2841b = i10 + 1;
        bArr[i10] = (byte) (i9 & 255);
    }

    public void a(long j10) {
        c(8);
        byte[] bArr = this.f2840a;
        int i9 = this.f2841b;
        int i10 = i9 + 1;
        this.f2841b = i10;
        bArr[i9] = (byte) ((j10 >>> 56) & 255);
        int i11 = i10 + 1;
        this.f2841b = i11;
        bArr[i10] = (byte) ((j10 >>> 48) & 255);
        int i12 = i11 + 1;
        this.f2841b = i12;
        bArr[i11] = (byte) ((j10 >>> 40) & 255);
        int i13 = i12 + 1;
        this.f2841b = i13;
        bArr[i12] = (byte) ((j10 >>> 32) & 255);
        int i14 = i13 + 1;
        this.f2841b = i14;
        bArr[i13] = (byte) ((j10 >>> 24) & 255);
        int i15 = i14 + 1;
        this.f2841b = i15;
        bArr[i14] = (byte) ((j10 >>> 16) & 255);
        int i16 = i15 + 1;
        this.f2841b = i16;
        bArr[i15] = (byte) ((j10 >>> 8) & 255);
        this.f2841b = i16 + 1;
        bArr[i16] = (byte) (j10 & 255);
    }

    public void a(String str) {
        byte[] b10 = c.b(str);
        b(b10.length);
        a(b10, 0, b10.length);
    }

    public void a(byte[] bArr) {
        b(bArr.length);
        a(bArr, 0, bArr.length);
    }

    public void a(byte[] bArr, int i9, int i10) {
        c(i10);
        System.arraycopy(bArr, i9, this.f2840a, this.f2841b, i10);
        this.f2841b += i10;
    }

    public byte[] a() {
        int i9 = this.f2841b;
        byte[] bArr = new byte[i9];
        System.arraycopy(this.f2840a, 0, bArr, 0, i9);
        return bArr;
    }

    public void b(int i9) {
        a(i9, 16);
        c(2);
        byte[] bArr = this.f2840a;
        int i10 = this.f2841b;
        int i11 = i10 + 1;
        this.f2841b = i11;
        bArr[i10] = (byte) ((i9 >>> 8) & 255);
        this.f2841b = i11 + 1;
        bArr[i11] = (byte) (i9 & 255);
    }
}