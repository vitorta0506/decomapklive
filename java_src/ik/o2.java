package ik;

import fk.e;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class o2 extends e.b {

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41574k = {new l2(fk.d.f39762b)};

    /* renamed from: j  reason: collision with root package name */
    protected p2 f41575j;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41576a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long[] f41577b;

        a(int i9, long[] jArr) {
            this.f41576a = i9;
            this.f41577b = jArr;
        }

        private fk.i b(long[] jArr, long[] jArr2) {
            return o2.this.E(new l2(jArr), new l2(jArr2), o2.f41574k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            long[] c10 = nk.k.c();
            long[] c11 = nk.k.c();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41576a; i11++) {
                long j10 = ((i11 ^ i9) - 1) >> 31;
                for (int i12 = 0; i12 < 7; i12++) {
                    long j11 = c10[i12];
                    long[] jArr = this.f41577b;
                    c10[i12] = j11 ^ (jArr[i10 + i12] & j10);
                    c11[i12] = c11[i12] ^ (jArr[(i10 + 7) + i12] & j10);
                }
                i10 += 14;
            }
            return b(c10, c11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41576a;
        }
    }

    public o2() {
        super(409, 87, 0, 0);
        this.f41575j = new p2(this, null, null);
        this.f39768b = k(BigInteger.valueOf(1L));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("0021A5C2C8EE9FEB5C4B9A753B7B476B7FD6422EF1F3DD674761FA99D6AC27C8A9A197B272822F6CD57A55AA4F50AE317B13545F")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("010000000000000000000000000000000000000000000000000001E2AAD6A612F33307BE5FA47C3C9E052F838164CD37D9A21173"));
        this.f39771e = BigInteger.valueOf(2L);
        this.f39772f = 6;
    }

    protected fk.i E(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new p2(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new o2();
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
        return new p2(this, fVar, fVar2);
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
        return this.f41575j;
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 6;
    }
}
