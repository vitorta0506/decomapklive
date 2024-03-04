package ik;

import fk.e;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class q1 extends e.b {

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41591k = {new p1(fk.d.f39762b)};

    /* renamed from: j  reason: collision with root package name */
    protected r1 f41592j;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41593a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long[] f41594b;

        a(int i9, long[] jArr) {
            this.f41593a = i9;
            this.f41594b = jArr;
        }

        private fk.i b(long[] jArr, long[] jArr2) {
            return q1.this.E(new p1(jArr), new p1(jArr2), q1.f41591k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            long[] j10 = nk.h.j();
            long[] j11 = nk.h.j();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41593a; i11++) {
                long j12 = ((i11 ^ i9) - 1) >> 31;
                for (int i12 = 0; i12 < 4; i12++) {
                    long j13 = j10[i12];
                    long[] jArr = this.f41594b;
                    j10[i12] = j13 ^ (jArr[i10 + i12] & j12);
                    j11[i12] = j11[i12] ^ (jArr[(i10 + 4) + i12] & j12);
                }
                i10 += 8;
            }
            return b(j10, j11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41593a;
        }
    }

    public q1() {
        super(193, 15, 0, 0);
        this.f41592j = new r1(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("0017858FEB7A98975169E171F77B4087DE098AC8A911DF7B01")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("00FDFB49BFE6C3A89FACADAA7A1E5BBC7CC1C2E5D831478814")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("01000000000000000000000000C7F34A778F443ACC920EBA49"));
        this.f39771e = BigInteger.valueOf(2L);
        this.f39772f = 6;
    }

    protected fk.i E(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new r1(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new q1();
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
        return new r1(this, fVar, fVar2);
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
        return this.f41592j;
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 6;
    }
}
