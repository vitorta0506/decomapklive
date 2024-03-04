package ik;

import fk.e;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class g extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f41490j = i.f41508h;

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41491k = {new i(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected j f41492i;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41493a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f41494b;

        a(int i9, int[] iArr) {
            this.f41493a = i9;
            this.f41494b = iArr;
        }

        private fk.i b(int[] iArr, int[] iArr2) {
            return g.this.C(new i(iArr), new i(iArr2), g.f41491k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            int[] d10 = nk.e.d();
            int[] d11 = nk.e.d();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41493a; i11++) {
                int i12 = ((i11 ^ i9) - 1) >> 31;
                for (int i13 = 0; i13 < 5; i13++) {
                    int i14 = d10[i13];
                    int[] iArr = this.f41494b;
                    d10[i13] = i14 ^ (iArr[i10 + i13] & i12);
                    d11[i13] = d11[i13] ^ (iArr[(i10 + 5) + i13] & i12);
                }
                i10 += 10;
            }
            return b(d10, d11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41493a;
        }
    }

    public g() {
        super(f41490j);
        this.f41492i = new j(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("1C97BEFC54BD7A8B65ACF89F81D4D4ADC565FA45")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("0100000000000000000001F4C8F927AED3CA752257"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected fk.i C(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new j(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new g();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 5 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.e.c(((i) iVar.n()).f41509g, 0, iArr, i11);
            int i13 = i11 + 5;
            nk.e.c(((i) iVar.o()).f41509g, 0, iArr, i13);
            i11 = i13 + 5;
        }
        return new a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new j(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new i(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f41490j.bitLength();
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41492i;
    }

    @Override // fk.e.c, fk.e
    public fk.f x(SecureRandom secureRandom) {
        int[] d10 = nk.e.d();
        h.j(secureRandom, d10);
        return new i(d10);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
