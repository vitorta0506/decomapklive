package hk;

import fk.e;
import fk.f;
import fk.g;
import fk.i;
import java.math.BigInteger;
import java.security.SecureRandom;
import nk.h;
/* loaded from: classes7.dex */
public class a extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f40809j = c.f40817h;

    /* renamed from: k  reason: collision with root package name */
    private static final f[] f40810k = {new c(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected d f40811i;

    /* renamed from: hk.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    class C0446a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40812a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f40813b;

        C0446a(int i9, int[] iArr) {
            this.f40812a = i9;
            this.f40813b = iArr;
        }

        private i b(int[] iArr, int[] iArr2) {
            return a.this.C(new c(iArr), new c(iArr2), a.f40810k);
        }

        @Override // fk.g
        public i a(int i9) {
            int[] i10 = h.i();
            int[] i11 = h.i();
            int i12 = 0;
            for (int i13 = 0; i13 < this.f40812a; i13++) {
                int i14 = ((i13 ^ i9) - 1) >> 31;
                for (int i15 = 0; i15 < 8; i15++) {
                    int i16 = i10[i15];
                    int[] iArr = this.f40813b;
                    i10[i15] = i16 ^ (iArr[i12 + i15] & i14);
                    i11[i15] = i11[i15] ^ (iArr[(i12 + 8) + i15] & i14);
                }
                i12 += 16;
            }
            return b(i10, i11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f40812a;
        }
    }

    public a() {
        super(f40809j);
        this.f40811i = new d(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected i C(f fVar, f fVar2, f[] fVarArr) {
        return new d(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected e c() {
        return new a();
    }

    @Override // fk.e
    public g e(i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 8 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i iVar = iVarArr[i9 + i12];
            h.f(((c) iVar.n()).f40818g, 0, iArr, i11);
            int i13 = i11 + 8;
            h.f(((c) iVar.o()).f40818g, 0, iArr, i13);
            i11 = i13 + 8;
        }
        return new C0446a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public i g(f fVar, f fVar2) {
        return new d(this, fVar, fVar2);
    }

    @Override // fk.e
    public f k(BigInteger bigInteger) {
        return new c(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f40809j.bitLength();
    }

    @Override // fk.e
    public i r() {
        return this.f40811i;
    }

    @Override // fk.e.c, fk.e
    public f x(SecureRandom secureRandom) {
        int[] i9 = h.i();
        b.k(secureRandom, i9);
        return new c(i9);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
