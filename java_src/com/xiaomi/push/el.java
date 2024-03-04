package com.xiaomi.push;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import kotlin.UByte;
/* loaded from: classes5.dex */
public class el extends p2 {

    /* renamed from: n  reason: collision with root package name */
    private static final s2 f36846n = new s2();

    /* renamed from: b  reason: collision with root package name */
    protected boolean f36847b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f36848c;

    /* renamed from: d  reason: collision with root package name */
    protected int f36849d;

    /* renamed from: e  reason: collision with root package name */
    protected boolean f36850e;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f36851f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f36852g;

    /* renamed from: h  reason: collision with root package name */
    private byte[] f36853h;

    /* renamed from: i  reason: collision with root package name */
    private byte[] f36854i;

    /* renamed from: j  reason: collision with root package name */
    private byte[] f36855j;

    /* renamed from: k  reason: collision with root package name */
    private byte[] f36856k;

    /* renamed from: l  reason: collision with root package name */
    private byte[] f36857l;

    /* renamed from: m  reason: collision with root package name */
    private byte[] f36858m;

    /* loaded from: classes5.dex */
    public static class a implements er {

        /* renamed from: a  reason: collision with root package name */
        protected int f36859a;

        /* renamed from: a  reason: collision with other field name */
        protected boolean f329a;

        /* renamed from: b  reason: collision with root package name */
        protected boolean f36860b;

        public a() {
            this(false, true);
        }

        public a(boolean z10, boolean z11) {
            this(z10, z11, 0);
        }

        public a(boolean z10, boolean z11, int i9) {
            this.f329a = z10;
            this.f36860b = z11;
            this.f36859a = i9;
        }

        @Override // com.xiaomi.push.er
        public p2 a(v2 v2Var) {
            el elVar = new el(v2Var, this.f329a, this.f36860b);
            int i9 = this.f36859a;
            if (i9 != 0) {
                elVar.L(i9);
            }
            return elVar;
        }
    }

    public el(v2 v2Var, boolean z10, boolean z11) {
        super(v2Var);
        this.f36850e = false;
        this.f36851f = new byte[1];
        this.f36852g = new byte[2];
        this.f36853h = new byte[4];
        this.f36854i = new byte[8];
        this.f36855j = new byte[1];
        this.f36856k = new byte[2];
        this.f36857l = new byte[4];
        this.f36858m = new byte[8];
        this.f36847b = z10;
        this.f36848c = z11;
    }

    private int I(byte[] bArr, int i9, int i10) {
        M(i10);
        return this.f37030a.g(bArr, i9, i10);
    }

    @Override // com.xiaomi.push.p2
    public void A() {
    }

    @Override // com.xiaomi.push.p2
    public void B() {
    }

    @Override // com.xiaomi.push.p2
    public void C() {
    }

    @Override // com.xiaomi.push.p2
    public void D() {
    }

    @Override // com.xiaomi.push.p2
    public void E() {
    }

    @Override // com.xiaomi.push.p2
    public void F() {
    }

    @Override // com.xiaomi.push.p2
    public void G() {
    }

    public String J(int i9) {
        try {
            M(i9);
            byte[] bArr = new byte[i9];
            this.f37030a.g(bArr, 0, i9);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new ej("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public void K(byte b10) {
        byte[] bArr = this.f36851f;
        bArr[0] = b10;
        this.f37030a.d(bArr, 0, 1);
    }

    public void L(int i9) {
        this.f36849d = i9;
        this.f36850e = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void M(int i9) {
        if (i9 < 0) {
            throw new ej("Negative length: " + i9);
        } else if (this.f36850e) {
            int i10 = this.f36849d - i9;
            this.f36849d = i10;
            if (i10 >= 0) {
                return;
            }
            throw new ej("Message length exceeded: " + i9);
        }
    }

    @Override // com.xiaomi.push.p2
    public byte a() {
        if (this.f37030a.f() < 1) {
            I(this.f36855j, 0, 1);
            return this.f36855j[0];
        }
        byte b10 = this.f37030a.e()[this.f37030a.a()];
        this.f37030a.c(1);
        return b10;
    }

    @Override // com.xiaomi.push.p2
    public double b() {
        return Double.longBitsToDouble(d());
    }

    @Override // com.xiaomi.push.p2
    public int c() {
        byte[] bArr = this.f36857l;
        int i9 = 0;
        if (this.f37030a.f() >= 4) {
            bArr = this.f37030a.e();
            i9 = this.f37030a.a();
            this.f37030a.c(4);
        } else {
            I(this.f36857l, 0, 4);
        }
        return (bArr[i9 + 3] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 24) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 8);
    }

    @Override // com.xiaomi.push.p2
    public long d() {
        byte[] bArr = this.f36858m;
        int i9 = 0;
        if (this.f37030a.f() >= 8) {
            bArr = this.f37030a.e();
            i9 = this.f37030a.a();
            this.f37030a.c(8);
        } else {
            I(this.f36858m, 0, 8);
        }
        return (bArr[i9 + 7] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 56) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 48) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 40) | ((bArr[i9 + 3] & UByte.MAX_VALUE) << 32) | ((bArr[i9 + 4] & UByte.MAX_VALUE) << 24) | ((bArr[i9 + 5] & UByte.MAX_VALUE) << 16) | ((bArr[i9 + 6] & UByte.MAX_VALUE) << 8);
    }

    @Override // com.xiaomi.push.p2
    public m2 e() {
        byte a10 = a();
        return new m2("", a10, a10 == 0 ? (short) 0 : l());
    }

    @Override // com.xiaomi.push.p2
    public n2 f() {
        return new n2(a(), c());
    }

    @Override // com.xiaomi.push.p2
    public o2 g() {
        return new o2(a(), a(), c());
    }

    @Override // com.xiaomi.push.p2
    public r2 h() {
        return new r2(a(), c());
    }

    @Override // com.xiaomi.push.p2
    public s2 i() {
        return f36846n;
    }

    @Override // com.xiaomi.push.p2
    public String j() {
        int c10 = c();
        if (this.f37030a.f() >= c10) {
            try {
                String str = new String(this.f37030a.e(), this.f37030a.a(), c10, "UTF-8");
                this.f37030a.c(c10);
                return str;
            } catch (UnsupportedEncodingException unused) {
                throw new ej("JVM DOES NOT SUPPORT UTF-8");
            }
        }
        return J(c10);
    }

    @Override // com.xiaomi.push.p2
    public ByteBuffer k() {
        int c10 = c();
        M(c10);
        if (this.f37030a.f() >= c10) {
            ByteBuffer wrap = ByteBuffer.wrap(this.f37030a.e(), this.f37030a.a(), c10);
            this.f37030a.c(c10);
            return wrap;
        }
        byte[] bArr = new byte[c10];
        this.f37030a.g(bArr, 0, c10);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.xiaomi.push.p2
    public short l() {
        byte[] bArr = this.f36856k;
        int i9 = 0;
        if (this.f37030a.f() >= 2) {
            bArr = this.f37030a.e();
            i9 = this.f37030a.a();
            this.f37030a.c(2);
        } else {
            I(this.f36856k, 0, 2);
        }
        return (short) ((bArr[i9 + 1] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 8));
    }

    @Override // com.xiaomi.push.p2
    public void m() {
    }

    @Override // com.xiaomi.push.p2
    public void n(int i9) {
        byte[] bArr = this.f36853h;
        bArr[0] = (byte) ((i9 >> 24) & 255);
        bArr[1] = (byte) ((i9 >> 16) & 255);
        bArr[2] = (byte) ((i9 >> 8) & 255);
        bArr[3] = (byte) (i9 & 255);
        this.f37030a.d(bArr, 0, 4);
    }

    @Override // com.xiaomi.push.p2
    public void o(long j10) {
        byte[] bArr = this.f36854i;
        bArr[0] = (byte) ((j10 >> 56) & 255);
        bArr[1] = (byte) ((j10 >> 48) & 255);
        bArr[2] = (byte) ((j10 >> 40) & 255);
        bArr[3] = (byte) ((j10 >> 32) & 255);
        bArr[4] = (byte) ((j10 >> 24) & 255);
        bArr[5] = (byte) ((j10 >> 16) & 255);
        bArr[6] = (byte) ((j10 >> 8) & 255);
        bArr[7] = (byte) (j10 & 255);
        this.f37030a.d(bArr, 0, 8);
    }

    @Override // com.xiaomi.push.p2
    public void p(m2 m2Var) {
        K(m2Var.f36993b);
        v(m2Var.f36994c);
    }

    @Override // com.xiaomi.push.p2
    public void q(n2 n2Var) {
        K(n2Var.f37001a);
        n(n2Var.f37002b);
    }

    @Override // com.xiaomi.push.p2
    public void r(o2 o2Var) {
        K(o2Var.f37018a);
        K(o2Var.f37019b);
        n(o2Var.f37020c);
    }

    @Override // com.xiaomi.push.p2
    public void s(s2 s2Var) {
    }

    @Override // com.xiaomi.push.p2
    public void t(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            n(bytes.length);
            this.f37030a.d(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new ej("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.xiaomi.push.p2
    public void u(ByteBuffer byteBuffer) {
        int limit = (byteBuffer.limit() - byteBuffer.position()) - byteBuffer.arrayOffset();
        n(limit);
        this.f37030a.d(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), limit);
    }

    @Override // com.xiaomi.push.p2
    public void v(short s10) {
        byte[] bArr = this.f36852g;
        bArr[0] = (byte) ((s10 >> 8) & 255);
        bArr[1] = (byte) (s10 & 255);
        this.f37030a.d(bArr, 0, 2);
    }

    @Override // com.xiaomi.push.p2
    public void w(boolean z10) {
        K(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.xiaomi.push.p2
    public boolean x() {
        return a() == 1;
    }

    @Override // com.xiaomi.push.p2
    public void y() {
    }

    @Override // com.xiaomi.push.p2
    public void z() {
        K((byte) 0);
    }
}
