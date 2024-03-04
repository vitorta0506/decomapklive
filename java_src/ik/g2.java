package ik;

import fk.e;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class g2 extends e.b {

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41499k = {new f2(fk.d.f39762b)};

    /* renamed from: j  reason: collision with root package name */
    protected h2 f41500j;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41501a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long[] f41502b;

        a(int i9, long[] jArr) {
            this.f41501a = i9;
            this.f41502b = jArr;
        }

        private fk.i b(long[] jArr, long[] jArr2) {
            return g2.this.E(new f2(jArr), new f2(jArr2), g2.f41499k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            long[] c10 = nk.i.c();
            long[] c11 = nk.i.c();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41501a; i11++) {
                long j10 = ((i11 ^ i9) - 1) >> 31;
                for (int i12 = 0; i12 < 5; i12++) {
                    long j11 = c10[i12];
                    long[] jArr = this.f41502b;
                    c10[i12] = j11 ^ (jArr[i10 + i12] & j10);
                    c11[i12] = c11[i12] ^ (jArr[(i10 + 5) + i12] & j10);
                }
                i10 += 10;
            }
            return b(c10, c11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41501a;
        }
    }

    public g2() {
        super(283, 5, 7, 12);
        this.f41500j = new h2(this, null, null);
        this.f39768b = k(BigInteger.valueOf(0L));
        this.f39769c = k(BigInteger.valueOf(1L));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61"));
        this.f39771e = BigInteger.valueOf(4L);
        this.f39772f = 6;
    }

    protected fk.i E(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new h2(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new g2();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        long[] jArr = new long[i10 * 5 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.i.a(((f2) iVar.n()).f41489g, 0, jArr, i11);
            int i13 = i11 + 5;
            nk.i.a(((f2) iVar.o()).f41489g, 0, jArr, i13);
            i11 = i13 + 5;
        }
        return new a(i10, jArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new h2(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new f2(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return 283;
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41500j;
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 6;
    }
}
