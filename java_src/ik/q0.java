package ik;

import fk.e;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class q0 extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f41585j = s0.f41605h;

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41586k = {new s0(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected t0 f41587i;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41588a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f41589b;

        a(int i9, int[] iArr) {
            this.f41588a = i9;
            this.f41589b = iArr;
        }

        private fk.i b(int[] iArr, int[] iArr2) {
            return q0.this.C(new s0(iArr), new s0(iArr2), q0.f41586k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            int[] k10 = nk.n.k(17);
            int[] k11 = nk.n.k(17);
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41588a; i11++) {
                int i12 = ((i11 ^ i9) - 1) >> 31;
                for (int i13 = 0; i13 < 17; i13++) {
                    int i14 = k10[i13];
                    int[] iArr = this.f41589b;
                    k10[i13] = i14 ^ (iArr[i10 + i13] & i12);
                    k11[i13] = k11[i13] ^ (iArr[(i10 + 17) + i13] & i12);
                }
                i10 += 34;
            }
            return b(k10, k11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41588a;
        }
    }

    public q0() {
        super(f41585j);
        this.f41587i = new t0(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected fk.i C(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new t0(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new q0();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 17 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.n.j(17, ((s0) iVar.n()).f41606g, 0, iArr, i11);
            int i13 = i11 + 17;
            nk.n.j(17, ((s0) iVar.o()).f41606g, 0, iArr, i13);
            i11 = i13 + 17;
        }
        return new a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new t0(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new s0(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f41585j.bitLength();
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41587i;
    }

    @Override // fk.e.c, fk.e
    public fk.f x(SecureRandom secureRandom) {
        int[] k10 = nk.n.k(17);
        r0.k(secureRandom, k10);
        return new s0(k10);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
