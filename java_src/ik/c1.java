package ik;

import fk.e;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class c1 extends e.b {

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41458k = {new b1(fk.d.f39762b)};

    /* renamed from: j  reason: collision with root package name */
    protected d1 f41459j;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41460a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long[] f41461b;

        a(int i9, long[] jArr) {
            this.f41460a = i9;
            this.f41461b = jArr;
        }

        private fk.i b(long[] jArr, long[] jArr2) {
            return c1.this.E(new b1(jArr), new b1(jArr2), c1.f41458k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            long[] i10 = nk.f.i();
            long[] i11 = nk.f.i();
            int i12 = 0;
            for (int i13 = 0; i13 < this.f41460a; i13++) {
                long j10 = ((i13 ^ i9) - 1) >> 31;
                for (int i14 = 0; i14 < 3; i14++) {
                    long j11 = i10[i14];
                    long[] jArr = this.f41461b;
                    i10[i14] = j11 ^ (jArr[i12 + i14] & j10);
                    i11[i14] = i11[i14] ^ (jArr[(i12 + 3) + i14] & j10);
                }
                i12 += 6;
            }
            return b(i10, i11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41460a;
        }
    }

    public c1() {
        super(131, 2, 3, 8);
        this.f41459j = new d1(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("07A11B09A76B562144418FF3FF8C2570B8")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("0217C05610884B63B9C6C7291678F9D341")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("0400000000000000023123953A9464B54D"));
        this.f39771e = BigInteger.valueOf(2L);
        this.f39772f = 6;
    }

    protected fk.i E(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new d1(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new c1();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        long[] jArr = new long[i10 * 3 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.f.f(((b1) iVar.n()).f41452g, 0, jArr, i11);
            int i13 = i11 + 3;
            nk.f.f(((b1) iVar.o()).f41452g, 0, jArr, i13);
            i11 = i13 + 3;
        }
        return new a(i10, jArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new d1(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new b1(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return 131;
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41459j;
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 6;
    }
}
