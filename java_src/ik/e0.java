package ik;

import fk.e;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class e0 extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f41474j = g0.f41496h;

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41475k = {new g0(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected h0 f41476i;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41477a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f41478b;

        a(int i9, int[] iArr) {
            this.f41477a = i9;
            this.f41478b = iArr;
        }

        private fk.i b(int[] iArr, int[] iArr2) {
            return e0.this.C(new g0(iArr), new g0(iArr2), e0.f41475k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            int[] i10 = nk.h.i();
            int[] i11 = nk.h.i();
            int i12 = 0;
            for (int i13 = 0; i13 < this.f41477a; i13++) {
                int i14 = ((i13 ^ i9) - 1) >> 31;
                for (int i15 = 0; i15 < 8; i15++) {
                    int i16 = i10[i15];
                    int[] iArr = this.f41478b;
                    i10[i15] = i16 ^ (iArr[i12 + i15] & i14);
                    i11[i15] = i11[i15] ^ (iArr[(i12 + 8) + i15] & i14);
                }
                i12 += 16;
            }
            return b(i10, i11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41477a;
        }
    }

    public e0() {
        super(f41474j);
        this.f41476i = new h0(this, null, null);
        this.f39768b = k(fk.d.f39761a);
        this.f39769c = k(BigInteger.valueOf(7L));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected fk.i C(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new h0(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new e0();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 8 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.h.f(((g0) iVar.n()).f41497g, 0, iArr, i11);
            int i13 = i11 + 8;
            nk.h.f(((g0) iVar.o()).f41497g, 0, iArr, i13);
            i11 = i13 + 8;
        }
        return new a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new h0(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new g0(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f41474j.bitLength();
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41476i;
    }

    @Override // fk.e.c, fk.e
    public fk.f x(SecureRandom secureRandom) {
        int[] i9 = nk.h.i();
        f0.j(secureRandom, i9);
        return new g0(i9);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
