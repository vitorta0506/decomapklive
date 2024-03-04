package ik;

import fk.e;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class w0 extends e.b {

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41637k = {new v0(fk.d.f39762b)};

    /* renamed from: j  reason: collision with root package name */
    protected x0 f41638j;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41639a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long[] f41640b;

        a(int i9, long[] jArr) {
            this.f41639a = i9;
            this.f41640b = jArr;
        }

        private fk.i b(long[] jArr, long[] jArr2) {
            return w0.this.E(new v0(jArr), new v0(jArr2), w0.f41637k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            long[] g10 = nk.d.g();
            long[] g11 = nk.d.g();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41639a; i11++) {
                long j10 = ((i11 ^ i9) - 1) >> 31;
                for (int i12 = 0; i12 < 2; i12++) {
                    long j11 = g10[i12];
                    long[] jArr = this.f41640b;
                    g10[i12] = j11 ^ (jArr[i10 + i12] & j10);
                    g11[i12] = g11[i12] ^ (jArr[(i10 + 2) + i12] & j10);
                }
                i10 += 4;
            }
            return b(g10, g11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41639a;
        }
    }

    public w0() {
        super(113, 9, 0, 0);
        this.f41638j = new x0(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("003088250CA6E7C7FE649CE85820F7")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("00E8BEE4D3E2260744188BE0E9C723")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("0100000000000000D9CCEC8A39E56F"));
        this.f39771e = BigInteger.valueOf(2L);
        this.f39772f = 6;
    }

    protected fk.i E(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new x0(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new w0();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        long[] jArr = new long[i10 * 2 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.d.d(((v0) iVar.n()).f41629g, 0, jArr, i11);
            int i13 = i11 + 2;
            nk.d.d(((v0) iVar.o()).f41629g, 0, jArr, i13);
            i11 = i13 + 2;
        }
        return new a(i10, jArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new x0(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new v0(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return 113;
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41638j;
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 6;
    }
}
