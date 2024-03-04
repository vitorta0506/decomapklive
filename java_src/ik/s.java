package ik;

import fk.e;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class s extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f41599j = u.f41620h;

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41600k = {new u(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected v f41601i;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41602a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f41603b;

        a(int i9, int[] iArr) {
            this.f41602a = i9;
            this.f41603b = iArr;
        }

        private fk.i b(int[] iArr, int[] iArr2) {
            return s.this.C(new u(iArr), new u(iArr2), s.f41600k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            int[] h10 = nk.f.h();
            int[] h11 = nk.f.h();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41602a; i11++) {
                int i12 = ((i11 ^ i9) - 1) >> 31;
                for (int i13 = 0; i13 < 6; i13++) {
                    int i14 = h10[i13];
                    int[] iArr = this.f41603b;
                    h10[i13] = i14 ^ (iArr[i10 + i13] & i12);
                    h11[i13] = h11[i13] ^ (iArr[(i10 + 6) + i13] & i12);
                }
                i10 += 12;
            }
            return b(h10, h11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41602a;
        }
    }

    public s() {
        super(f41599j);
        this.f41601i = new v(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("64210519E59C80E70FA7E9AB72243049FEB8DEECC146B9B1")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFFFFFFFFFFFFFFFFFF99DEF836146BC9B1B4D22831"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected fk.i C(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new v(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new s();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 6 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.f.e(((u) iVar.n()).f41621g, 0, iArr, i11);
            int i13 = i11 + 6;
            nk.f.e(((u) iVar.o()).f41621g, 0, iArr, i13);
            i11 = i13 + 6;
        }
        return new a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new v(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new u(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f41599j.bitLength();
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41601i;
    }

    @Override // fk.e.c, fk.e
    public fk.f x(SecureRandom secureRandom) {
        int[] h10 = nk.f.h();
        t.k(secureRandom, h10);
        return new u(h10);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
