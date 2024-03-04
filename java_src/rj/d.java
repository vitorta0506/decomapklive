package rj;

import kotlin.UByte;
/* loaded from: classes7.dex */
public class d extends a {

    /* renamed from: d  reason: collision with root package name */
    private int f57511d;

    /* renamed from: e  reason: collision with root package name */
    private int f57512e;

    /* renamed from: f  reason: collision with root package name */
    private int f57513f;

    /* renamed from: g  reason: collision with root package name */
    private int f57514g;

    /* renamed from: h  reason: collision with root package name */
    private int f57515h;

    /* renamed from: i  reason: collision with root package name */
    private int[] f57516i;

    /* renamed from: j  reason: collision with root package name */
    private int f57517j;

    public d() {
        this.f57516i = new int[80];
        reset();
    }

    public d(d dVar) {
        super(dVar);
        this.f57516i = new int[80];
        m(dVar);
    }

    private void m(d dVar) {
        this.f57511d = dVar.f57511d;
        this.f57512e = dVar.f57512e;
        this.f57513f = dVar.f57513f;
        this.f57514g = dVar.f57514g;
        this.f57515h = dVar.f57515h;
        int[] iArr = dVar.f57516i;
        System.arraycopy(iArr, 0, this.f57516i, 0, iArr.length);
        this.f57517j = dVar.f57517j;
    }

    private int n(int i9, int i10, int i11) {
        return ((~i9) & i11) | (i10 & i9);
    }

    private int o(int i9, int i10, int i11) {
        return (i9 & i11) | (i9 & i10) | (i10 & i11);
    }

    private int p(int i9, int i10, int i11) {
        return (i9 ^ i10) ^ i11;
    }

    @Override // org.bouncycastle.crypto.e
    public int a(byte[] bArr, int i9) {
        i();
        org.bouncycastle.util.g.c(this.f57511d, bArr, i9);
        org.bouncycastle.util.g.c(this.f57512e, bArr, i9 + 4);
        org.bouncycastle.util.g.c(this.f57513f, bArr, i9 + 8);
        org.bouncycastle.util.g.c(this.f57514g, bArr, i9 + 12);
        org.bouncycastle.util.g.c(this.f57515h, bArr, i9 + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.util.f
    public org.bouncycastle.util.f copy() {
        return new d(this);
    }

    @Override // org.bouncycastle.crypto.e
    public int d() {
        return 20;
    }

    @Override // org.bouncycastle.util.f
    public void g(org.bouncycastle.util.f fVar) {
        d dVar = (d) fVar;
        super.h(dVar);
        m(dVar);
    }

    @Override // org.bouncycastle.crypto.e
    public String getAlgorithmName() {
        return "SHA-1";
    }

    @Override // rj.a
    protected void j() {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        for (int i21 = 16; i21 < 80; i21++) {
            int[] iArr = this.f57516i;
            int i22 = ((iArr[i21 - 3] ^ iArr[i21 - 8]) ^ iArr[i21 - 14]) ^ iArr[i21 - 16];
            iArr[i21] = (i22 >>> 31) | (i22 << 1);
        }
        int i23 = this.f57511d;
        int i24 = this.f57512e;
        int i25 = this.f57513f;
        int i26 = this.f57514g;
        int i27 = this.f57515h;
        int i28 = 0;
        int i29 = 0;
        while (i28 < 4) {
            int i30 = i29 + 1;
            int n9 = i27 + ((i23 << 5) | (i23 >>> 27)) + n(i24, i25, i26) + this.f57516i[i29] + 1518500249;
            int i31 = (i24 >>> 2) | (i24 << 30);
            int i32 = i30 + 1;
            int n10 = i26 + ((n9 << 5) | (n9 >>> 27)) + n(i23, i31, i25) + this.f57516i[i30] + 1518500249;
            int i33 = (i23 >>> 2) | (i23 << 30);
            int i34 = i32 + 1;
            int n11 = i25 + ((n10 << 5) | (n10 >>> 27)) + n(n9, i33, i31) + this.f57516i[i32] + 1518500249;
            i27 = (n9 >>> 2) | (n9 << 30);
            int i35 = i34 + 1;
            i24 = i31 + ((n11 << 5) | (n11 >>> 27)) + n(n10, i27, i33) + this.f57516i[i34] + 1518500249;
            i26 = (n10 >>> 2) | (n10 << 30);
            i23 = i33 + ((i24 << 5) | (i24 >>> 27)) + n(n11, i26, i27) + this.f57516i[i35] + 1518500249;
            i25 = (n11 >>> 2) | (n11 << 30);
            i28++;
            i29 = i35 + 1;
        }
        int i36 = 0;
        while (i36 < 4) {
            int i37 = i29 + 1;
            int p10 = i27 + ((i23 << 5) | (i23 >>> 27)) + p(i24, i25, i26) + this.f57516i[i29] + 1859775393;
            int i38 = (i24 >>> 2) | (i24 << 30);
            int i39 = i37 + 1;
            int p11 = i26 + ((p10 << 5) | (p10 >>> 27)) + p(i23, i38, i25) + this.f57516i[i37] + 1859775393;
            int i40 = (i23 >>> 2) | (i23 << 30);
            int i41 = i39 + 1;
            int p12 = i25 + ((p11 << 5) | (p11 >>> 27)) + p(p10, i40, i38) + this.f57516i[i39] + 1859775393;
            i27 = (p10 >>> 2) | (p10 << 30);
            int i42 = i41 + 1;
            i24 = i38 + ((p12 << 5) | (p12 >>> 27)) + p(p11, i27, i40) + this.f57516i[i41] + 1859775393;
            i26 = (p11 >>> 2) | (p11 << 30);
            i23 = i40 + ((i24 << 5) | (i24 >>> 27)) + p(p12, i26, i27) + this.f57516i[i42] + 1859775393;
            i25 = (p12 >>> 2) | (p12 << 30);
            i36++;
            i29 = i42 + 1;
        }
        int i43 = 0;
        while (i43 < 4) {
            int o10 = i27 + (((((i23 << 5) | (i23 >>> 27)) + o(i24, i25, i26)) + this.f57516i[i29]) - 1894007588);
            int o11 = i26 + (((((o10 << 5) | (o10 >>> 27)) + o(i23, i16, i25)) + this.f57516i[i15]) - 1894007588);
            int o12 = i25 + (((((o11 << 5) | (o11 >>> 27)) + o(o10, i18, i16)) + this.f57516i[i17]) - 1894007588);
            i27 = (o10 >>> 2) | (o10 << 30);
            i24 = ((i24 >>> 2) | (i24 << 30)) + (((((o12 << 5) | (o12 >>> 27)) + o(o11, i27, i18)) + this.f57516i[i19]) - 1894007588);
            i26 = (o11 >>> 2) | (o11 << 30);
            i23 = ((i23 >>> 2) | (i23 << 30)) + (((((i24 << 5) | (i24 >>> 27)) + o(o12, i26, i27)) + this.f57516i[i20]) - 1894007588);
            i25 = (o12 >>> 2) | (o12 << 30);
            i43++;
            i29 = i29 + 1 + 1 + 1 + 1 + 1;
        }
        int i44 = 0;
        while (i44 <= 3) {
            int p13 = i27 + (((((i23 << 5) | (i23 >>> 27)) + p(i24, i25, i26)) + this.f57516i[i29]) - 899497514);
            int p14 = i26 + (((((p13 << 5) | (p13 >>> 27)) + p(i23, i10, i25)) + this.f57516i[i9]) - 899497514);
            int p15 = i25 + (((((p14 << 5) | (p14 >>> 27)) + p(p13, i12, i10)) + this.f57516i[i11]) - 899497514);
            i27 = (p13 >>> 2) | (p13 << 30);
            i24 = ((i24 >>> 2) | (i24 << 30)) + (((((p15 << 5) | (p15 >>> 27)) + p(p14, i27, i12)) + this.f57516i[i13]) - 899497514);
            i26 = (p14 >>> 2) | (p14 << 30);
            i23 = ((i23 >>> 2) | (i23 << 30)) + (((((i24 << 5) | (i24 >>> 27)) + p(p15, i26, i27)) + this.f57516i[i14]) - 899497514);
            i25 = (p15 >>> 2) | (p15 << 30);
            i44++;
            i29 = i29 + 1 + 1 + 1 + 1 + 1;
        }
        this.f57511d += i23;
        this.f57512e += i24;
        this.f57513f += i25;
        this.f57514g += i26;
        this.f57515h += i27;
        this.f57517j = 0;
        for (int i45 = 0; i45 < 16; i45++) {
            this.f57516i[i45] = 0;
        }
    }

    @Override // rj.a
    protected void k(long j10) {
        if (this.f57517j > 14) {
            j();
        }
        int[] iArr = this.f57516i;
        iArr[14] = (int) (j10 >>> 32);
        iArr[15] = (int) j10;
    }

    @Override // rj.a
    protected void l(byte[] bArr, int i9) {
        int i10 = i9 + 1;
        int i11 = i10 + 1;
        int i12 = (bArr[i11 + 1] & UByte.MAX_VALUE) | (bArr[i9] << 24) | ((bArr[i10] & UByte.MAX_VALUE) << 16) | ((bArr[i11] & UByte.MAX_VALUE) << 8);
        int[] iArr = this.f57516i;
        int i13 = this.f57517j;
        iArr[i13] = i12;
        int i14 = i13 + 1;
        this.f57517j = i14;
        if (i14 == 16) {
            j();
        }
    }

    @Override // rj.a, org.bouncycastle.crypto.e
    public void reset() {
        super.reset();
        this.f57511d = 1732584193;
        this.f57512e = -271733879;
        this.f57513f = -1732584194;
        this.f57514g = 271733878;
        this.f57515h = -1009589776;
        this.f57517j = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = this.f57516i;
            if (i9 == iArr.length) {
                return;
            }
            iArr[i9] = 0;
            i9++;
        }
    }
}
