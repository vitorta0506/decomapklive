package ik;

import fk.e;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class a0 extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f41439j = c0.f41456h;

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41440k = {new c0(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected d0 f41441i;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41442a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f41443b;

        a(int i9, int[] iArr) {
            this.f41442a = i9;
            this.f41443b = iArr;
        }

        private fk.i b(int[] iArr, int[] iArr2) {
            return a0.this.C(new c0(iArr), new c0(iArr2), a0.f41440k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            int[] e10 = nk.g.e();
            int[] e11 = nk.g.e();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41442a; i11++) {
                int i12 = ((i11 ^ i9) - 1) >> 31;
                for (int i13 = 0; i13 < 7; i13++) {
                    int i14 = e10[i13];
                    int[] iArr = this.f41443b;
                    e10[i13] = i14 ^ (iArr[i10 + i13] & i12);
                    e11[i13] = e11[i13] ^ (iArr[(i10 + 7) + i13] & i12);
                }
                i10 += 14;
            }
            return b(e10, e11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41442a;
        }
    }

    public a0() {
        super(f41439j);
        this.f41441i = new d0(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("B4050A850C04B3ABF54132565044B0B7D7BFD8BA270B39432355FFB4")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected fk.i C(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new d0(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new a0();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 7 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.g.c(((c0) iVar.n()).f41457g, 0, iArr, i11);
            int i13 = i11 + 7;
            nk.g.c(((c0) iVar.o()).f41457g, 0, iArr, i13);
            i11 = i13 + 7;
        }
        return new a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new d0(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new c0(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f41439j.bitLength();
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41441i;
    }

    @Override // fk.e.c, fk.e
    public fk.f x(SecureRandom secureRandom) {
        int[] e10 = nk.g.e();
        b0.k(secureRandom, e10);
        return new c0(e10);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
