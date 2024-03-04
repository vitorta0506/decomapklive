package ik;

import fk.e;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class m2 extends e.b {

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41558k = {new l2(fk.d.f39762b)};

    /* renamed from: j  reason: collision with root package name */
    protected n2 f41559j;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41560a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long[] f41561b;

        a(int i9, long[] jArr) {
            this.f41560a = i9;
            this.f41561b = jArr;
        }

        private fk.i b(long[] jArr, long[] jArr2) {
            return m2.this.E(new l2(jArr), new l2(jArr2), m2.f41558k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            long[] c10 = nk.k.c();
            long[] c11 = nk.k.c();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41560a; i11++) {
                long j10 = ((i11 ^ i9) - 1) >> 31;
                for (int i12 = 0; i12 < 7; i12++) {
                    long j11 = c10[i12];
                    long[] jArr = this.f41561b;
                    c10[i12] = j11 ^ (jArr[i10 + i12] & j10);
                    c11[i12] = c11[i12] ^ (jArr[(i10 + 7) + i12] & j10);
                }
                i10 += 14;
            }
            return b(c10, c11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41560a;
        }
    }

    public m2() {
        super(409, 87, 0, 0);
        this.f41559j = new n2(this, null, null);
        this.f39768b = k(BigInteger.valueOf(0L));
        this.f39769c = k(BigInteger.valueOf(1L));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F83B2D4EA20400EC4557D5ED3E3E7CA5B4B5C83B8E01E5FCF"));
        this.f39771e = BigInteger.valueOf(4L);
        this.f39772f = 6;
    }

    protected fk.i E(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new n2(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new m2();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        long[] jArr = new long[i10 * 7 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.k.a(((l2) iVar.n()).f41544g, 0, jArr, i11);
            int i13 = i11 + 7;
            nk.k.a(((l2) iVar.o()).f41544g, 0, jArr, i13);
            i11 = i13 + 7;
        }
        return new a(i10, jArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new n2(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new l2(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return 409;
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41559j;
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 6;
    }
}
