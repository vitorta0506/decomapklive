package ik;

import fk.e;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class s2 extends e.b {

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41612k = {new r2(fk.d.f39762b)};

    /* renamed from: j  reason: collision with root package name */
    protected t2 f41613j;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41614a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long[] f41615b;

        a(int i9, long[] jArr) {
            this.f41614a = i9;
            this.f41615b = jArr;
        }

        private fk.i b(long[] jArr, long[] jArr2) {
            return s2.this.E(new r2(jArr), new r2(jArr2), s2.f41612k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            long[] c10 = nk.m.c();
            long[] c11 = nk.m.c();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41614a; i11++) {
                long j10 = ((i11 ^ i9) - 1) >> 31;
                for (int i12 = 0; i12 < 9; i12++) {
                    long j11 = c10[i12];
                    long[] jArr = this.f41615b;
                    c10[i12] = j11 ^ (jArr[i10 + i12] & j10);
                    c11[i12] = c11[i12] ^ (jArr[(i10 + 9) + i12] & j10);
                }
                i10 += 18;
            }
            return b(c10, c11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41614a;
        }
    }

    public s2() {
        super(571, 2, 5, 10);
        this.f41613j = new t2(this, null, null);
        this.f39768b = k(BigInteger.valueOf(0L));
        this.f39769c = k(BigInteger.valueOf(1L));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("020000000000000000000000000000000000000000000000000000000000000000000000131850E1F19A63E4B391A8DB917F4138B630D84BE5D639381E91DEB45CFE778F637C1001"));
        this.f39771e = BigInteger.valueOf(4L);
        this.f39772f = 6;
    }

    protected fk.i E(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new t2(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new s2();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        long[] jArr = new long[i10 * 9 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.m.a(((r2) iVar.n()).f41598g, 0, jArr, i11);
            int i13 = i11 + 9;
            nk.m.a(((r2) iVar.o()).f41598g, 0, jArr, i13);
            i11 = i13 + 9;
        }
        return new a(i10, jArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new t2(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new r2(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return 571;
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41613j;
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 6;
    }
}
