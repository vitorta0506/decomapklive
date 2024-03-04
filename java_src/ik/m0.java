package ik;

import fk.e;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class m0 extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f41547j = o0.f41572h;

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41548k = {new o0(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected p0 f41549i;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41550a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f41551b;

        a(int i9, int[] iArr) {
            this.f41550a = i9;
            this.f41551b = iArr;
        }

        private fk.i b(int[] iArr, int[] iArr2) {
            return m0.this.C(new o0(iArr), new o0(iArr2), m0.f41548k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            int[] k10 = nk.n.k(12);
            int[] k11 = nk.n.k(12);
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41550a; i11++) {
                int i12 = ((i11 ^ i9) - 1) >> 31;
                for (int i13 = 0; i13 < 12; i13++) {
                    int i14 = k10[i13];
                    int[] iArr = this.f41551b;
                    k10[i13] = i14 ^ (iArr[i10 + i13] & i12);
                    k11[i13] = k11[i13] ^ (iArr[(i10 + 12) + i13] & i12);
                }
                i10 += 24;
            }
            return b(k10, k11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41550a;
        }
    }

    public m0() {
        super(f41547j);
        this.f41549i = new p0(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected fk.i C(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new p0(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new m0();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 12 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.n.j(12, ((o0) iVar.n()).f41573g, 0, iArr, i11);
            int i13 = i11 + 12;
            nk.n.j(12, ((o0) iVar.o()).f41573g, 0, iArr, i13);
            i11 = i13 + 12;
        }
        return new a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new p0(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new o0(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f41547j.bitLength();
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41549i;
    }

    @Override // fk.e.c, fk.e
    public fk.f x(SecureRandom secureRandom) {
        int[] k10 = nk.n.k(12);
        n0.k(secureRandom, k10);
        return new o0(k10);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
