package ik;

import fk.e;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class i0 extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f41510j = k0.f41534h;

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41511k = {new k0(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected l0 f41512i;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41513a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f41514b;

        a(int i9, int[] iArr) {
            this.f41513a = i9;
            this.f41514b = iArr;
        }

        private fk.i b(int[] iArr, int[] iArr2) {
            return i0.this.C(new k0(iArr), new k0(iArr2), i0.f41511k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            int[] i10 = nk.h.i();
            int[] i11 = nk.h.i();
            int i12 = 0;
            for (int i13 = 0; i13 < this.f41513a; i13++) {
                int i14 = ((i13 ^ i9) - 1) >> 31;
                for (int i15 = 0; i15 < 8; i15++) {
                    int i16 = i10[i15];
                    int[] iArr = this.f41514b;
                    i10[i15] = i16 ^ (iArr[i12 + i15] & i14);
                    i11[i15] = i11[i15] ^ (iArr[(i12 + 8) + i15] & i14);
                }
                i12 += 16;
            }
            return b(i10, i11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41513a;
        }
    }

    public i0() {
        super(f41510j);
        this.f41512i = new l0(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected fk.i C(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new l0(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new i0();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 8 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.h.f(((k0) iVar.n()).f41535g, 0, iArr, i11);
            int i13 = i11 + 8;
            nk.h.f(((k0) iVar.o()).f41535g, 0, iArr, i13);
            i11 = i13 + 8;
        }
        return new a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new l0(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new k0(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f41510j.bitLength();
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41512i;
    }

    @Override // fk.e.c, fk.e
    public fk.f x(SecureRandom secureRandom) {
        int[] i9 = nk.h.i();
        j0.k(secureRandom, i9);
        return new k0(i9);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
