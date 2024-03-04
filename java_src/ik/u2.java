package ik;

import fk.e;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class u2 extends e.b {

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41622k = {new r2(fk.d.f39762b)};

    /* renamed from: l  reason: collision with root package name */
    static final r2 f41623l;

    /* renamed from: m  reason: collision with root package name */
    static final r2 f41624m;

    /* renamed from: j  reason: collision with root package name */
    protected v2 f41625j;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41626a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long[] f41627b;

        a(int i9, long[] jArr) {
            this.f41626a = i9;
            this.f41627b = jArr;
        }

        private fk.i b(long[] jArr, long[] jArr2) {
            return u2.this.E(new r2(jArr), new r2(jArr2), u2.f41622k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            long[] c10 = nk.m.c();
            long[] c11 = nk.m.c();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41626a; i11++) {
                long j10 = ((i11 ^ i9) - 1) >> 31;
                for (int i12 = 0; i12 < 9; i12++) {
                    long j11 = c10[i12];
                    long[] jArr = this.f41627b;
                    c10[i12] = j11 ^ (jArr[i10 + i12] & j10);
                    c11[i12] = c11[i12] ^ (jArr[(i10 + 9) + i12] & j10);
                }
                i10 += 18;
            }
            return b(c10, c11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41626a;
        }
    }

    static {
        r2 r2Var = new r2(new BigInteger(1, org.bouncycastle.util.encoders.d.b("02F40E7E2221F295DE297117B7F3D62F5C6A97FFCB8CEFF1CD6BA8CE4A9A18AD84FFABBD8EFA59332BE7AD6756A66E294AFD185A78FF12AA520E4DE739BACA0C7FFEFF7F2955727A")));
        f41623l = r2Var;
        f41624m = (r2) r2Var.n();
    }

    public u2() {
        super(571, 2, 5, 10);
        this.f41625j = new v2(this, null, null);
        this.f39768b = k(BigInteger.valueOf(1L));
        this.f39769c = f41623l;
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE661CE18FF55987308059B186823851EC7DD9CA1161DE93D5174D66E8382E9BB2FE84E47"));
        this.f39771e = BigInteger.valueOf(2L);
        this.f39772f = 6;
    }

    protected fk.i E(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new v2(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new u2();
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
        return new v2(this, fVar, fVar2);
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
        return this.f41625j;
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 6;
    }
}
