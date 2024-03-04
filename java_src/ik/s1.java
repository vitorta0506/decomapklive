package ik;

import fk.e;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class s1 extends e.b {

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41607k = {new p1(fk.d.f39762b)};

    /* renamed from: j  reason: collision with root package name */
    protected t1 f41608j;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41609a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long[] f41610b;

        a(int i9, long[] jArr) {
            this.f41609a = i9;
            this.f41610b = jArr;
        }

        private fk.i b(long[] jArr, long[] jArr2) {
            return s1.this.E(new p1(jArr), new p1(jArr2), s1.f41607k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            long[] j10 = nk.h.j();
            long[] j11 = nk.h.j();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41609a; i11++) {
                long j12 = ((i11 ^ i9) - 1) >> 31;
                for (int i12 = 0; i12 < 4; i12++) {
                    long j13 = j10[i12];
                    long[] jArr = this.f41610b;
                    j10[i12] = j13 ^ (jArr[i10 + i12] & j12);
                    j11[i12] = j11[i12] ^ (jArr[(i10 + 4) + i12] & j12);
                }
                i10 += 8;
            }
            return b(j10, j11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41609a;
        }
    }

    public s1() {
        super(193, 15, 0, 0);
        this.f41608j = new t1(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("0163F35A5137C2CE3EA6ED8667190B0BC43ECD69977702709B")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("00C9BB9E8927D4D64C377E2AB2856A5B16E3EFB7F61D4316AE")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("010000000000000000000000015AAB561B005413CCD4EE99D5"));
        this.f39771e = BigInteger.valueOf(2L);
        this.f39772f = 6;
    }

    protected fk.i E(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new t1(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new s1();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        long[] jArr = new long[i10 * 4 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.h.g(((p1) iVar.n()).f41582g, 0, jArr, i11);
            int i13 = i11 + 4;
            nk.h.g(((p1) iVar.o()).f41582g, 0, jArr, i13);
            i11 = i13 + 4;
        }
        return new a(i10, jArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new t1(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new p1(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return 193;
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41608j;
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 6;
    }
}
