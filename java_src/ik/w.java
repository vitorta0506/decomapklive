package ik;

import fk.e;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class w extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f41631j = y.f41650h;

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41632k = {new y(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected z f41633i;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41634a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f41635b;

        a(int i9, int[] iArr) {
            this.f41634a = i9;
            this.f41635b = iArr;
        }

        private fk.i b(int[] iArr, int[] iArr2) {
            return w.this.C(new y(iArr), new y(iArr2), w.f41632k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            int[] e10 = nk.g.e();
            int[] e11 = nk.g.e();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41634a; i11++) {
                int i12 = ((i11 ^ i9) - 1) >> 31;
                for (int i13 = 0; i13 < 7; i13++) {
                    int i14 = e10[i13];
                    int[] iArr = this.f41635b;
                    e10[i13] = i14 ^ (iArr[i10 + i13] & i12);
                    e11[i13] = e11[i13] ^ (iArr[(i10 + 7) + i13] & i12);
                }
                i10 += 14;
            }
            return b(e10, e11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41634a;
        }
    }

    public w() {
        super(f41631j);
        this.f41633i = new z(this, null, null);
        this.f39768b = k(fk.d.f39761a);
        this.f39769c = k(BigInteger.valueOf(5L));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("010000000000000000000000000001DCE8D2EC6184CAF0A971769FB1F7"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected fk.i C(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new z(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new w();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 7 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.g.c(((y) iVar.n()).f41652g, 0, iArr, i11);
            int i13 = i11 + 7;
            nk.g.c(((y) iVar.o()).f41652g, 0, iArr, i13);
            i11 = i13 + 7;
        }
        return new a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new z(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new y(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f41631j.bitLength();
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41633i;
    }

    @Override // fk.e.c, fk.e
    public fk.f x(SecureRandom secureRandom) {
        int[] e10 = nk.g.e();
        x.j(secureRandom, e10);
        return new y(e10);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
