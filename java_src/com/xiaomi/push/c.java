package com.xiaomi.push;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f36399a;

    /* renamed from: b  reason: collision with root package name */
    private final int f36400b;

    /* renamed from: c  reason: collision with root package name */
    private int f36401c;

    /* renamed from: d  reason: collision with root package name */
    private final OutputStream f36402d;

    /* loaded from: classes5.dex */
    public static class a extends IOException {
        a() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    private c(OutputStream outputStream, byte[] bArr) {
        this.f36402d = outputStream;
        this.f36399a = bArr;
        this.f36401c = 0;
        this.f36400b = bArr.length;
    }

    private c(byte[] bArr, int i9, int i10) {
        this.f36402d = null;
        this.f36399a = bArr;
        this.f36401c = i9;
        this.f36400b = i9 + i10;
    }

    public static int G(int i9) {
        return R(i9);
    }

    public static int H(int i9, int i10) {
        return N(i9) + G(i10);
    }

    public static int I(long j10) {
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (((-16384) & j10) == 0) {
            return 2;
        }
        if (((-2097152) & j10) == 0) {
            return 3;
        }
        if (((-268435456) & j10) == 0) {
            return 4;
        }
        if (((-34359738368L) & j10) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j10) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j10) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j10) == 0) {
            return 8;
        }
        return (j10 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int N(int i9) {
        return R(w2.b(i9, 0));
    }

    private void O() {
        OutputStream outputStream = this.f36402d;
        if (outputStream == null) {
            throw new a();
        }
        outputStream.write(this.f36399a, 0, this.f36401c);
        this.f36401c = 0;
    }

    public static int R(int i9) {
        if ((i9 & (-128)) == 0) {
            return 1;
        }
        if ((i9 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i9) == 0) {
            return 3;
        }
        return (i9 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int b(int i9) {
        if (i9 >= 0) {
            return R(i9);
        }
        return 10;
    }

    public static int c(int i9, int i10) {
        return N(i9) + b(i10);
    }

    public static int d(int i9, long j10) {
        return N(i9) + i(j10);
    }

    public static int e(int i9, com.xiaomi.push.a aVar) {
        return N(i9) + j(aVar);
    }

    public static int f(int i9, g2 g2Var) {
        return N(i9) + k(g2Var);
    }

    public static int g(int i9, String str) {
        return N(i9) + l(str);
    }

    public static int h(int i9, boolean z10) {
        return N(i9) + m(z10);
    }

    public static int i(long j10) {
        return I(j10);
    }

    public static int j(com.xiaomi.push.a aVar) {
        return R(aVar.a()) + aVar.a();
    }

    public static int k(g2 g2Var) {
        int i9 = g2Var.i();
        return R(i9) + i9;
    }

    public static int l(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            return R(bytes.length) + bytes.length;
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("UTF-8 not supported.");
        }
    }

    public static int m(boolean z10) {
        return 1;
    }

    public static c n(OutputStream outputStream) {
        return o(outputStream, 4096);
    }

    public static c o(OutputStream outputStream, int i9) {
        return new c(outputStream, new byte[i9]);
    }

    public static c p(byte[] bArr, int i9, int i10) {
        return new c(bArr, i9, i10);
    }

    public void A(com.xiaomi.push.a aVar) {
        byte[] d10 = aVar.d();
        S(d10.length);
        E(d10);
    }

    public void B(g2 g2Var) {
        S(g2Var.a());
        g2Var.e(this);
    }

    public void C(String str) {
        byte[] bytes = str.getBytes("UTF-8");
        S(bytes.length);
        E(bytes);
    }

    public void D(boolean z10) {
        P(z10 ? 1 : 0);
    }

    public void E(byte[] bArr) {
        F(bArr, 0, bArr.length);
    }

    public void F(byte[] bArr, int i9, int i10) {
        int i11 = this.f36400b;
        int i12 = this.f36401c;
        if (i11 - i12 >= i10) {
            System.arraycopy(bArr, i9, this.f36399a, i12, i10);
            this.f36401c += i10;
            return;
        }
        int i13 = i11 - i12;
        System.arraycopy(bArr, i9, this.f36399a, i12, i13);
        int i14 = i9 + i13;
        int i15 = i10 - i13;
        this.f36401c = this.f36400b;
        O();
        if (i15 > this.f36400b) {
            this.f36402d.write(bArr, i14, i15);
            return;
        }
        System.arraycopy(bArr, i14, this.f36399a, 0, i15);
        this.f36401c = i15;
    }

    public void J() {
        if (a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public void K(int i9) {
        S(i9);
    }

    public void L(int i9, int i10) {
        Q(i9, 0);
        K(i10);
    }

    public void M(long j10) {
        while (((-128) & j10) != 0) {
            P((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        P((int) j10);
    }

    public void P(int i9) {
        r((byte) i9);
    }

    public void Q(int i9, int i10) {
        S(w2.b(i9, i10));
    }

    public void S(int i9) {
        while ((i9 & (-128)) != 0) {
            P((i9 & 127) | 128);
            i9 >>>= 7;
        }
        P(i9);
    }

    public int a() {
        if (this.f36402d == null) {
            return this.f36400b - this.f36401c;
        }
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
    }

    public void q() {
        if (this.f36402d != null) {
            O();
        }
    }

    public void r(byte b10) {
        if (this.f36401c == this.f36400b) {
            O();
        }
        byte[] bArr = this.f36399a;
        int i9 = this.f36401c;
        this.f36401c = i9 + 1;
        bArr[i9] = b10;
    }

    public void s(int i9) {
        if (i9 >= 0) {
            S(i9);
        } else {
            M(i9);
        }
    }

    public void t(int i9, int i10) {
        Q(i9, 0);
        s(i10);
    }

    public void u(int i9, long j10) {
        Q(i9, 0);
        z(j10);
    }

    public void v(int i9, com.xiaomi.push.a aVar) {
        Q(i9, 2);
        A(aVar);
    }

    public void w(int i9, g2 g2Var) {
        Q(i9, 2);
        B(g2Var);
    }

    public void x(int i9, String str) {
        Q(i9, 2);
        C(str);
    }

    public void y(int i9, boolean z10) {
        Q(i9, 0);
        D(z10);
    }

    public void z(long j10) {
        M(j10);
    }
}
