package ik;

import fk.e;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class i1 extends e.b {

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41516k = {new h1(fk.d.f39762b)};

    /* renamed from: j  reason: collision with root package name */
    protected j1 f41517j;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41518a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long[] f41519b;

        a(int i9, long[] jArr) {
            this.f41518a = i9;
            this.f41519b = jArr;
        }

        private fk.i b(long[] jArr, long[] jArr2) {
            return i1.this.E(new h1(jArr), new h1(jArr2), i1.f41516k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            long[] i10 = nk.f.i();
            long[] i11 = nk.f.i();
            int i12 = 0;
            for (int i13 = 0; i13 < this.f41518a; i13++) {
                long j10 = ((i13 ^ i9) - 1) >> 31;
                for (int i14 = 0; i14 < 3; i14++) {
                    long j11 = i10[i14];
                    long[] jArr = this.f41519b;
                    i10[i14] = j11 ^ (jArr[i12 + i14] & j10);
                    i11[i14] = i11[i14] ^ (jArr[(i12 + 3) + i14] & j10);
                }
                i12 += 6;
            }
            return b(i10, i11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41518a;
        }
    }

    public i1() {
        super(163, 3, 6, 7);
        this.f41517j = new j1(this, null, null);
        fk.f k10 = k(BigInteger.valueOf(1L));
        this.f39768b = k10;
        this.f39769c = k10;
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("04000000000000000000020108A2E0CC0D99F8A5EF"));
        this.f39771e = BigInteger.valueOf(2L);
        this.f39772f = 6;
    }

    protected fk.i E(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new j1(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new i1();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        long[] jArr = new long[i10 * 3 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.f.f(((h1) iVar.n()).f41507g, 0, jArr, i11);
            int i13 = i11 + 3;
            nk.f.f(((h1) iVar.o()).f41507g, 0, jArr, i13);
            i11 = i13 + 3;
        }
        return new a(i10, jArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new j1(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new h1(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return 163;
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41517j;
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 6;
    }
}
