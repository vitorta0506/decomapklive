package rj;

import kotlin.UByte;
/* loaded from: classes7.dex */
public class f extends a {

    /* renamed from: n  reason: collision with root package name */
    static final int[] f57529n = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};

    /* renamed from: d  reason: collision with root package name */
    private int f57530d;

    /* renamed from: e  reason: collision with root package name */
    private int f57531e;

    /* renamed from: f  reason: collision with root package name */
    private int f57532f;

    /* renamed from: g  reason: collision with root package name */
    private int f57533g;

    /* renamed from: h  reason: collision with root package name */
    private int f57534h;

    /* renamed from: i  reason: collision with root package name */
    private int f57535i;

    /* renamed from: j  reason: collision with root package name */
    private int f57536j;

    /* renamed from: k  reason: collision with root package name */
    private int f57537k;

    /* renamed from: l  reason: collision with root package name */
    private int[] f57538l;

    /* renamed from: m  reason: collision with root package name */
    private int f57539m;

    public f() {
        this.f57538l = new int[64];
        reset();
    }

    public f(f fVar) {
        super(fVar);
        this.f57538l = new int[64];
        s(fVar);
    }

    private static int m(int i9, int i10, int i11) {
        return ((~i9) & i11) ^ (i10 & i9);
    }

    private static int n(int i9, int i10, int i11) {
        return ((i9 ^ i10) & i11) | (i9 & i10);
    }

    private static int o(int i9) {
        return ((i9 << 10) | (i9 >>> 22)) ^ (((i9 >>> 2) | (i9 << 30)) ^ ((i9 >>> 13) | (i9 << 19)));
    }

    private static int p(int i9) {
        return ((i9 << 7) | (i9 >>> 25)) ^ (((i9 >>> 6) | (i9 << 26)) ^ ((i9 >>> 11) | (i9 << 21)));
    }

    private static int q(int i9) {
        return (i9 >>> 3) ^ (((i9 >>> 7) | (i9 << 25)) ^ ((i9 >>> 18) | (i9 << 14)));
    }

    private static int r(int i9) {
        return (i9 >>> 10) ^ (((i9 >>> 17) | (i9 << 15)) ^ ((i9 >>> 19) | (i9 << 13)));
    }

    private void s(f fVar) {
        super.h(fVar);
        this.f57530d = fVar.f57530d;
        this.f57531e = fVar.f57531e;
        this.f57532f = fVar.f57532f;
        this.f57533g = fVar.f57533g;
        this.f57534h = fVar.f57534h;
        this.f57535i = fVar.f57535i;
        this.f57536j = fVar.f57536j;
        this.f57537k = fVar.f57537k;
        int[] iArr = fVar.f57538l;
        System.arraycopy(iArr, 0, this.f57538l, 0, iArr.length);
        this.f57539m = fVar.f57539m;
    }

    @Override // org.bouncycastle.crypto.e
    public int a(byte[] bArr, int i9) {
        i();
        org.bouncycastle.util.g.c(this.f57530d, bArr, i9);
        org.bouncycastle.util.g.c(this.f57531e, bArr, i9 + 4);
        org.bouncycastle.util.g.c(this.f57532f, bArr, i9 + 8);
        org.bouncycastle.util.g.c(this.f57533g, bArr, i9 + 12);
        org.bouncycastle.util.g.c(this.f57534h, bArr, i9 + 16);
        org.bouncycastle.util.g.c(this.f57535i, bArr, i9 + 20);
        org.bouncycastle.util.g.c(this.f57536j, bArr, i9 + 24);
        org.bouncycastle.util.g.c(this.f57537k, bArr, i9 + 28);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.util.f
    public org.bouncycastle.util.f copy() {
        return new f(this);
    }

    @Override // org.bouncycastle.crypto.e
    public int d() {
        return 32;
    }

    @Override // org.bouncycastle.util.f
    public void g(org.bouncycastle.util.f fVar) {
        s((f) fVar);
    }

    @Override // org.bouncycastle.crypto.e
    public String getAlgorithmName() {
        return "SHA-256";
    }

    @Override // rj.a
    protected void j() {
        for (int i9 = 16; i9 <= 63; i9++) {
            int[] iArr = this.f57538l;
            int r10 = r(iArr[i9 - 2]);
            int[] iArr2 = this.f57538l;
            iArr[i9] = r10 + iArr2[i9 - 7] + q(iArr2[i9 - 15]) + this.f57538l[i9 - 16];
        }
        int i10 = this.f57530d;
        int i11 = this.f57531e;
        int i12 = this.f57532f;
        int i13 = this.f57533g;
        int i14 = this.f57534h;
        int i15 = this.f57535i;
        int i16 = this.f57536j;
        int i17 = this.f57537k;
        int i18 = 0;
        for (int i19 = 0; i19 < 8; i19++) {
            int p10 = p(i14) + m(i14, i15, i16);
            int[] iArr3 = f57529n;
            int i20 = i17 + p10 + iArr3[i18] + this.f57538l[i18];
            int i21 = i13 + i20;
            int o10 = i20 + o(i10) + n(i10, i11, i12);
            int i22 = i18 + 1;
            int p11 = i16 + p(i21) + m(i21, i14, i15) + iArr3[i22] + this.f57538l[i22];
            int i23 = i12 + p11;
            int o11 = p11 + o(o10) + n(o10, i10, i11);
            int i24 = i22 + 1;
            int p12 = i15 + p(i23) + m(i23, i21, i14) + iArr3[i24] + this.f57538l[i24];
            int i25 = i11 + p12;
            int o12 = p12 + o(o11) + n(o11, o10, i10);
            int i26 = i24 + 1;
            int p13 = i14 + p(i25) + m(i25, i23, i21) + iArr3[i26] + this.f57538l[i26];
            int i27 = i10 + p13;
            int o13 = p13 + o(o12) + n(o12, o11, o10);
            int i28 = i26 + 1;
            int p14 = i21 + p(i27) + m(i27, i25, i23) + iArr3[i28] + this.f57538l[i28];
            i17 = o10 + p14;
            i13 = p14 + o(o13) + n(o13, o12, o11);
            int i29 = i28 + 1;
            int p15 = i23 + p(i17) + m(i17, i27, i25) + iArr3[i29] + this.f57538l[i29];
            i16 = o11 + p15;
            i12 = p15 + o(i13) + n(i13, o13, o12);
            int i30 = i29 + 1;
            int p16 = i25 + p(i16) + m(i16, i17, i27) + iArr3[i30] + this.f57538l[i30];
            i15 = o12 + p16;
            i11 = p16 + o(i12) + n(i12, i13, o13);
            int i31 = i30 + 1;
            int p17 = i27 + p(i15) + m(i15, i16, i17) + iArr3[i31] + this.f57538l[i31];
            i14 = o13 + p17;
            i10 = p17 + o(i11) + n(i11, i12, i13);
            i18 = i31 + 1;
        }
        this.f57530d += i10;
        this.f57531e += i11;
        this.f57532f += i12;
        this.f57533g += i13;
        this.f57534h += i14;
        this.f57535i += i15;
        this.f57536j += i16;
        this.f57537k += i17;
        this.f57539m = 0;
        for (int i32 = 0; i32 < 16; i32++) {
            this.f57538l[i32] = 0;
        }
    }

    @Override // rj.a
    protected void k(long j10) {
        if (this.f57539m > 14) {
            j();
        }
        int[] iArr = this.f57538l;
        iArr[14] = (int) (j10 >>> 32);
        iArr[15] = (int) (j10 & (-1));
    }

    @Override // rj.a
    protected void l(byte[] bArr, int i9) {
        int i10 = i9 + 1;
        int i11 = i10 + 1;
        int i12 = (bArr[i11 + 1] & UByte.MAX_VALUE) | (bArr[i9] << 24) | ((bArr[i10] & UByte.MAX_VALUE) << 16) | ((bArr[i11] & UByte.MAX_VALUE) << 8);
        int[] iArr = this.f57538l;
        int i13 = this.f57539m;
        iArr[i13] = i12;
        int i14 = i13 + 1;
        this.f57539m = i14;
        if (i14 == 16) {
            j();
        }
    }

    @Override // rj.a, org.bouncycastle.crypto.e
    public void reset() {
        super.reset();
        this.f57530d = 1779033703;
        this.f57531e = -1150833019;
        this.f57532f = 1013904242;
        this.f57533g = -1521486534;
        this.f57534h = 1359893119;
        this.f57535i = -1694144372;
        this.f57536j = 528734635;
        this.f57537k = 1541459225;
        this.f57539m = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = this.f57538l;
            if (i9 == iArr.length) {
                return;
            }
            iArr[i9] = 0;
            i9++;
        }
    }
}
