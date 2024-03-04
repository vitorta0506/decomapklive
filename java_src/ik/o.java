package ik;

import fk.e;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class o extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f41566j = q.f41583h;

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41567k = {new q(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected r f41568i;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41569a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f41570b;

        a(int i9, int[] iArr) {
            this.f41569a = i9;
            this.f41570b = iArr;
        }

        private fk.i b(int[] iArr, int[] iArr2) {
            return o.this.C(new q(iArr), new q(iArr2), o.f41567k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            int[] h10 = nk.f.h();
            int[] h11 = nk.f.h();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41569a; i11++) {
                int i12 = ((i11 ^ i9) - 1) >> 31;
                for (int i13 = 0; i13 < 6; i13++) {
                    int i14 = h10[i13];
                    int[] iArr = this.f41570b;
                    h10[i13] = i14 ^ (iArr[i10 + i13] & i12);
                    h11[i13] = h11[i13] ^ (iArr[(i10 + 6) + i13] & i12);
                }
                i10 += 12;
            }
            return b(h10, h11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41569a;
        }
    }

    public o() {
        super(f41566j);
        this.f41568i = new r(this, null, null);
        this.f39768b = k(fk.d.f39761a);
        this.f39769c = k(BigInteger.valueOf(3L));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8D"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected fk.i C(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new r(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new o();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 6 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.f.e(((q) iVar.n()).f41584g, 0, iArr, i11);
            int i13 = i11 + 6;
            nk.f.e(((q) iVar.o()).f41584g, 0, iArr, i13);
            i11 = i13 + 6;
        }
        return new a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new r(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new q(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f41566j.bitLength();
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41568i;
    }

    @Override // fk.e.c, fk.e
    public fk.f x(SecureRandom secureRandom) {
        int[] h10 = nk.f.h();
        p.j(secureRandom, h10);
        return new q(h10);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
