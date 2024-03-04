package ik;

import fk.e;
import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class a extends e.c {

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f41433j = c.f41454h;

    /* renamed from: k  reason: collision with root package name */
    private static final fk.f[] f41434k = {new c(fk.d.f39762b)};

    /* renamed from: i  reason: collision with root package name */
    protected d f41435i;

    /* renamed from: ik.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    class C0462a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41436a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f41437b;

        C0462a(int i9, int[] iArr) {
            this.f41436a = i9;
            this.f41437b = iArr;
        }

        private fk.i b(int[] iArr, int[] iArr2) {
            return a.this.C(new c(iArr), new c(iArr2), a.f41434k);
        }

        @Override // fk.g
        public fk.i a(int i9) {
            int[] f10 = nk.d.f();
            int[] f11 = nk.d.f();
            int i10 = 0;
            for (int i11 = 0; i11 < this.f41436a; i11++) {
                int i12 = ((i11 ^ i9) - 1) >> 31;
                for (int i13 = 0; i13 < 4; i13++) {
                    int i14 = f10[i13];
                    int[] iArr = this.f41437b;
                    f10[i13] = i14 ^ (iArr[i10 + i13] & i12);
                    f11[i13] = f11[i13] ^ (iArr[(i10 + 4) + i13] & i12);
                }
                i10 += 8;
            }
            return b(f10, f11);
        }

        @Override // fk.g
        public int getSize() {
            return this.f41436a;
        }
    }

    public a() {
        super(f41433j);
        this.f41435i = new d(this, null, null);
        this.f39768b = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f39769c = k(new BigInteger(1, org.bouncycastle.util.encoders.d.b("E87579C11079F43DD824993C2CEE5ED3")));
        this.f39770d = new BigInteger(1, org.bouncycastle.util.encoders.d.b("FFFFFFFE0000000075A30D1B9038A115"));
        this.f39771e = BigInteger.valueOf(1L);
        this.f39772f = 2;
    }

    protected fk.i C(fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        return new d(this, fVar, fVar2, fVarArr);
    }

    @Override // fk.e
    protected fk.e c() {
        return new a();
    }

    @Override // fk.e
    public fk.g e(fk.i[] iVarArr, int i9, int i10) {
        int[] iArr = new int[i10 * 4 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            fk.i iVar = iVarArr[i9 + i12];
            nk.d.c(((c) iVar.n()).f41455g, 0, iArr, i11);
            int i13 = i11 + 4;
            nk.d.c(((c) iVar.o()).f41455g, 0, iArr, i13);
            i11 = i13 + 4;
        }
        return new C0462a(i10, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fk.e
    public fk.i g(fk.f fVar, fk.f fVar2) {
        return new d(this, fVar, fVar2);
    }

    @Override // fk.e
    public fk.f k(BigInteger bigInteger) {
        return new c(bigInteger);
    }

    @Override // fk.e
    public int q() {
        return f41433j.bitLength();
    }

    @Override // fk.e
    public fk.i r() {
        return this.f41435i;
    }

    @Override // fk.e.c, fk.e
    public fk.f x(SecureRandom secureRandom) {
        int[] f10 = nk.d.f();
        b.k(secureRandom, f10);
        return new c(f10);
    }

    @Override // fk.e
    public boolean y(int i9) {
        return i9 == 2;
    }
}
