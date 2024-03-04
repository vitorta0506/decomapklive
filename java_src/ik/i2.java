package ik;

import fk.e;
import java.math.BigInteger;
/* loaded from: classes7.dex */
public class i2 extends e.b {

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41521k = {new f2(fk.d.f39762b)};

    /* renamed from: j  reason: collision with root package name */
    protected j2 f41522j;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41523a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long[] f41524b;

        a(int i9, long[] jArr) {
            this.f41523a = i9;
            this.f41524b = jArr;
        }

        private fk.i b(long[] jArr, long[] jArr2) {
            return i2.this.E(new f2(jArr), new f2(jArr2), i2.f41521k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            long[] c10 = nk.i.c();
            long[] c11 = nk.i.c();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41523a; i11++) {
                long j10 = ((i11 ^ i9) - 1) >> 31;
                for (int i12 = 0; i12 < 5; i12++) {
                    long j11 = c10[i12];
                    long[] jArr = this.f41524b;
                    c10[i12] = j11 ^ (jArr[i10 + i12] & j10);
                    c11[i12] = c11[i12] ^ (jArr[(i10 + 5) + i12] & j10);
                }
                i10 += 10;
            }
            return b(c10, c11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41523a;
        }
    }

    public i2() {
        super(283, 5, 7, 12);
        this.f41522j = new j2(this, null, null);
        this.f39768b = k(BigInteger.valueOf(1L));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("027B680AC8B8596DA5A4AF8A19A0303FCA97FD7645309FA2A581485AF6263E313B79A2F5")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF90399660FC938A90165B042A7CEFADB307"));
        this.f39771e = BigInteger.valueOf(2L);
        this.f39772f = 6;
    }

    protected fk.i E(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new j2(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new i2();
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
        return new j2(this, fVar, fVar2);
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
        return this.f41522j;
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 6;
    }
}
