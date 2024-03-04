package ik;

import fk.e;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class k extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f41528j = m.f41545h;

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41529k = {new m(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected n f41530i;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41531a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f41532b;

        a(int i9, int[] iArr) {
            this.f41531a = i9;
            this.f41532b = iArr;
        }

        private fk.i b(int[] iArr, int[] iArr2) {
            return k.this.C(new m(iArr), new m(iArr2), k.f41529k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            int[] d10 = nk.e.d();
            int[] d11 = nk.e.d();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41531a; i11++) {
                int i12 = ((i11 ^ i9) - 1) >> 31;
                for (int i13 = 0; i13 < 5; i13++) {
                    int i14 = d10[i13];
                    int[] iArr = this.f41532b;
                    d10[i13] = i14 ^ (iArr[i10 + i13] & i12);
                    d11[i13] = d11[i13] ^ (iArr[(i10 + 5) + i13] & i12);
                }
                i10 += 10;
            }
            return b(d10, d11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41531a;
        }
    }

    public k() {
        super(f41528j);
        this.f41530i = new n(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC70")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("B4E134D3FB59EB8BAB57274904664D5AF50388BA")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("0100000000000000000000351EE786A818F3A1A16B"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected fk.i C(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new n(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new k();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 5 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.e.c(((m) iVar.n()).f41546g, 0, iArr, i11);
            int i13 = i11 + 5;
            nk.e.c(((m) iVar.o()).f41546g, 0, iArr, i13);
            i11 = i13 + 5;
        }
        return new a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new n(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new m(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f41528j.bitLength();
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41530i;
    }

    @Override // fk.e.c, fk.e
    public fk.f x(SecureRandom secureRandom) {
        int[] d10 = nk.e.d();
        l.j(secureRandom, d10);
        return new m(d10);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
