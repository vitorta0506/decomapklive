package rj;

import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes7.dex */
public abstract class c implements org.bouncycastle.crypto.f, org.bouncycastle.util.f {

    /* renamed from: o  reason: collision with root package name */
    static final long[] f57496o = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};

    /* renamed from: a  reason: collision with root package name */
    private byte[] f57497a;

    /* renamed from: b  reason: collision with root package name */
    private int f57498b;

    /* renamed from: c  reason: collision with root package name */
    private long f57499c;

    /* renamed from: d  reason: collision with root package name */
    private long f57500d;

    /* renamed from: e  reason: collision with root package name */
    protected long f57501e;

    /* renamed from: f  reason: collision with root package name */
    protected long f57502f;

    /* renamed from: g  reason: collision with root package name */
    protected long f57503g;

    /* renamed from: h  reason: collision with root package name */
    protected long f57504h;

    /* renamed from: i  reason: collision with root package name */
    protected long f57505i;

    /* renamed from: j  reason: collision with root package name */
    protected long f57506j;

    /* renamed from: k  reason: collision with root package name */
    protected long f57507k;

    /* renamed from: l  reason: collision with root package name */
    protected long f57508l;

    /* renamed from: m  reason: collision with root package name */
    private long[] f57509m;

    /* renamed from: n  reason: collision with root package name */
    private int f57510n;

    /* JADX INFO: Access modifiers changed from: protected */
    public c() {
        this.f57497a = new byte[8];
        this.f57509m = new long[80];
        this.f57498b = 0;
        reset();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(c cVar) {
        this.f57497a = new byte[8];
        this.f57509m = new long[80];
        o(cVar);
    }

    private long h(long j10, long j11, long j12) {
        return ((~j10) & j12) ^ (j11 & j10);
    }

    private long i(long j10, long j11, long j12) {
        return ((j10 & j12) ^ (j10 & j11)) ^ (j11 & j12);
    }

    private long j(long j10) {
        return (j10 >>> 7) ^ (((j10 << 63) | (j10 >>> 1)) ^ ((j10 << 56) | (j10 >>> 8)));
    }

    private long k(long j10) {
        return (j10 >>> 6) ^ (((j10 << 45) | (j10 >>> 19)) ^ ((j10 << 3) | (j10 >>> 61)));
    }

    private long l(long j10) {
        return ((j10 >>> 39) | (j10 << 25)) ^ (((j10 << 36) | (j10 >>> 28)) ^ ((j10 << 30) | (j10 >>> 34)));
    }

    private long m(long j10) {
        return ((j10 >>> 41) | (j10 << 23)) ^ (((j10 << 50) | (j10 >>> 14)) ^ ((j10 << 46) | (j10 >>> 18)));
    }

    private void n() {
        long j10 = this.f57499c;
        if (j10 > 2305843009213693951L) {
            this.f57500d += j10 >>> 61;
            this.f57499c = j10 & 2305843009213693951L;
        }
    }

    @Override // org.bouncycastle.crypto.e
    public void b(byte b10) {
        byte[] bArr = this.f57497a;
        int i9 = this.f57498b;
        int i10 = i9 + 1;
        this.f57498b = i10;
        bArr[i9] = b10;
        if (i10 == bArr.length) {
            s(bArr, 0);
            this.f57498b = 0;
        }
        this.f57499c++;
    }

    @Override // org.bouncycastle.crypto.e
    public void c(byte[] bArr, int i9, int i10) {
        while (this.f57498b != 0 && i10 > 0) {
            b(bArr[i9]);
            i9++;
            i10--;
        }
        while (i10 > this.f57497a.length) {
            s(bArr, i9);
            byte[] bArr2 = this.f57497a;
            i9 += bArr2.length;
            i10 -= bArr2.length;
            this.f57499c += bArr2.length;
        }
        while (i10 > 0) {
            b(bArr[i9]);
            i9++;
            i10--;
        }
    }

    @Override // org.bouncycastle.crypto.f
    public int f() {
        return 128;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void o(c cVar) {
        byte[] bArr = cVar.f57497a;
        System.arraycopy(bArr, 0, this.f57497a, 0, bArr.length);
        this.f57498b = cVar.f57498b;
        this.f57499c = cVar.f57499c;
        this.f57500d = cVar.f57500d;
        this.f57501e = cVar.f57501e;
        this.f57502f = cVar.f57502f;
        this.f57503g = cVar.f57503g;
        this.f57504h = cVar.f57504h;
        this.f57505i = cVar.f57505i;
        this.f57506j = cVar.f57506j;
        this.f57507k = cVar.f57507k;
        this.f57508l = cVar.f57508l;
        long[] jArr = cVar.f57509m;
        System.arraycopy(jArr, 0, this.f57509m, 0, jArr.length);
        this.f57510n = cVar.f57510n;
    }

    public void p() {
        n();
        long j10 = this.f57499c << 3;
        long j11 = this.f57500d;
        byte b10 = ByteCompanionObject.MIN_VALUE;
        while (true) {
            b(b10);
            if (this.f57498b == 0) {
                r(j10, j11);
                q();
                return;
            }
            b10 = 0;
        }
    }

    protected void q() {
        n();
        for (int i9 = 16; i9 <= 79; i9++) {
            long[] jArr = this.f57509m;
            long k10 = k(jArr[i9 - 2]);
            long[] jArr2 = this.f57509m;
            jArr[i9] = k10 + jArr2[i9 - 7] + j(jArr2[i9 - 15]) + this.f57509m[i9 - 16];
        }
        long j10 = this.f57501e;
        long j11 = this.f57502f;
        long j12 = this.f57503g;
        long j13 = this.f57504h;
        long j14 = this.f57505i;
        long j15 = this.f57506j;
        long j16 = this.f57507k;
        long j17 = j15;
        long j18 = j13;
        int i10 = 0;
        long j19 = j11;
        long j20 = j12;
        long j21 = j14;
        int i11 = 0;
        long j22 = this.f57508l;
        long j23 = j10;
        long j24 = j16;
        while (i11 < 10) {
            long j25 = j21;
            long[] jArr3 = f57496o;
            int i12 = i10 + 1;
            long m10 = j22 + m(j21) + h(j21, j17, j24) + jArr3[i10] + this.f57509m[i10];
            long j26 = j18 + m10;
            long l10 = m10 + l(j23) + i(j23, j19, j20);
            int i13 = i12 + 1;
            long m11 = j24 + m(j26) + h(j26, j25, j17) + jArr3[i12] + this.f57509m[i12];
            long j27 = j20 + m11;
            long l11 = m11 + l(l10) + i(l10, j23, j19);
            int i14 = i13 + 1;
            long m12 = j17 + m(j27) + h(j27, j26, j25) + jArr3[i13] + this.f57509m[i13];
            long j28 = j19 + m12;
            long l12 = m12 + l(l11) + i(l11, l10, j23);
            int i15 = i14 + 1;
            long m13 = j25 + m(j28) + h(j28, j27, j26) + jArr3[i14] + this.f57509m[i14];
            long j29 = j23 + m13;
            long l13 = m13 + l(l12) + i(l12, l11, l10);
            int i16 = i15 + 1;
            long m14 = j26 + m(j29) + h(j29, j28, j27) + jArr3[i15] + this.f57509m[i15];
            long j30 = l10 + m14;
            long l14 = m14 + l(l13) + i(l13, l12, l11);
            int i17 = i16 + 1;
            long m15 = j27 + m(j30) + h(j30, j29, j28) + jArr3[i16] + this.f57509m[i16];
            long j31 = l11 + m15;
            long l15 = m15 + l(l14) + i(l14, l13, l12);
            j24 = j31;
            int i18 = i17 + 1;
            long m16 = j28 + m(j31) + h(j31, j30, j29) + jArr3[i17] + this.f57509m[i17];
            long j32 = l12 + m16;
            j17 = j32;
            j19 = m16 + l(l15) + i(l15, l14, l13);
            long m17 = j29 + m(j32) + h(j32, j24, j30) + jArr3[i18] + this.f57509m[i18];
            long l16 = m17 + l(j19) + i(j19, l15, l14);
            i11++;
            j21 = l13 + m17;
            j20 = l15;
            j22 = j30;
            j18 = l14;
            i10 = i18 + 1;
            j23 = l16;
        }
        this.f57501e += j23;
        this.f57502f += j19;
        this.f57503g += j20;
        this.f57504h += j18;
        this.f57505i += j21;
        this.f57506j += j17;
        this.f57507k += j24;
        this.f57508l += j22;
        this.f57510n = 0;
        for (int i19 = 0; i19 < 16; i19++) {
            this.f57509m[i19] = 0;
        }
    }

    protected void r(long j10, long j11) {
        if (this.f57510n > 14) {
            q();
        }
        long[] jArr = this.f57509m;
        jArr[14] = j11;
        jArr[15] = j10;
    }

    @Override // org.bouncycastle.crypto.e
    public void reset() {
        this.f57499c = 0L;
        this.f57500d = 0L;
        int i9 = 0;
        this.f57498b = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f57497a;
            if (i10 >= bArr.length) {
                break;
            }
            bArr[i10] = 0;
            i10++;
        }
        this.f57510n = 0;
        while (true) {
            long[] jArr = this.f57509m;
            if (i9 == jArr.length) {
                return;
            }
            jArr[i9] = 0;
            i9++;
        }
    }

    protected void s(byte[] bArr, int i9) {
        this.f57509m[this.f57510n] = org.bouncycastle.util.g.b(bArr, i9);
        int i10 = this.f57510n + 1;
        this.f57510n = i10;
        if (i10 == 16) {
            q();
        }
    }
}
