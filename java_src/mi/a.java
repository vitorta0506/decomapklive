package mi;

import mi.b;
import okio.Utf8;
import org.apache.commons.codec.CodecPolicy;
/* loaded from: classes7.dex */
public class a extends b {

    /* renamed from: o  reason: collision with root package name */
    private static final byte[] f55134o = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: p  reason: collision with root package name */
    private static final byte[] f55135p = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* renamed from: q  reason: collision with root package name */
    private static final byte[] f55136q = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, Utf8.REPLACEMENT_BYTE, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    /* renamed from: j  reason: collision with root package name */
    private final byte[] f55137j;

    /* renamed from: k  reason: collision with root package name */
    private final byte[] f55138k;

    /* renamed from: l  reason: collision with root package name */
    private final byte[] f55139l;

    /* renamed from: m  reason: collision with root package name */
    private final int f55140m;

    /* renamed from: n  reason: collision with root package name */
    private final int f55141n;

    public a(boolean z10) {
        this(76, b.f55143i, z10);
    }

    public static byte[] n(byte[] bArr, boolean z10) {
        return o(bArr, z10, false);
    }

    public static byte[] o(byte[] bArr, boolean z10, boolean z11) {
        return p(bArr, z10, z11, Integer.MAX_VALUE);
    }

    public static byte[] p(byte[] bArr, boolean z10, boolean z11, int i9) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        a aVar = z10 ? new a(z11) : new a(0, b.f55143i, z11);
        long j10 = aVar.j(bArr);
        if (j10 <= i9) {
            return aVar.f(bArr);
        }
        throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + j10 + ") than the specified maximum size of " + i9);
    }

    @Override // mi.b
    void e(byte[] bArr, int i9, int i10, b.a aVar) {
        if (aVar.f55156f) {
            return;
        }
        if (i10 >= 0) {
            int i11 = 0;
            while (i11 < i10) {
                byte[] h10 = h(this.f55141n, aVar);
                int i12 = (aVar.f55158h + 1) % 3;
                aVar.f55158h = i12;
                int i13 = i9 + 1;
                int i14 = bArr[i9];
                if (i14 < 0) {
                    i14 += 256;
                }
                int i15 = (aVar.f55151a << 8) + i14;
                aVar.f55151a = i15;
                if (i12 == 0) {
                    int i16 = aVar.f55154d;
                    int i17 = i16 + 1;
                    aVar.f55154d = i17;
                    byte[] bArr2 = this.f55137j;
                    h10[i16] = bArr2[(i15 >> 18) & 63];
                    int i18 = i17 + 1;
                    aVar.f55154d = i18;
                    h10[i17] = bArr2[(i15 >> 12) & 63];
                    int i19 = i18 + 1;
                    aVar.f55154d = i19;
                    h10[i18] = bArr2[(i15 >> 6) & 63];
                    int i20 = i19 + 1;
                    aVar.f55154d = i20;
                    h10[i19] = bArr2[i15 & 63];
                    int i21 = aVar.f55157g + 4;
                    aVar.f55157g = i21;
                    int i22 = this.f55148e;
                    if (i22 > 0 && i22 <= i21) {
                        byte[] bArr3 = this.f55139l;
                        System.arraycopy(bArr3, 0, h10, i20, bArr3.length);
                        aVar.f55154d += this.f55139l.length;
                        aVar.f55157g = 0;
                    }
                }
                i11++;
                i9 = i13;
            }
            return;
        }
        aVar.f55156f = true;
        if (aVar.f55158h == 0 && this.f55148e == 0) {
            return;
        }
        byte[] h11 = h(this.f55141n, aVar);
        int i23 = aVar.f55154d;
        int i24 = aVar.f55158h;
        if (i24 != 0) {
            if (i24 == 1) {
                int i25 = i23 + 1;
                aVar.f55154d = i25;
                byte[] bArr4 = this.f55137j;
                int i26 = aVar.f55151a;
                h11[i23] = bArr4[(i26 >> 2) & 63];
                int i27 = i25 + 1;
                aVar.f55154d = i27;
                h11[i25] = bArr4[(i26 << 4) & 63];
                if (bArr4 == f55134o) {
                    int i28 = i27 + 1;
                    aVar.f55154d = i28;
                    byte b10 = this.f55145b;
                    h11[i27] = b10;
                    aVar.f55154d = i28 + 1;
                    h11[i28] = b10;
                }
            } else if (i24 == 2) {
                int i29 = i23 + 1;
                aVar.f55154d = i29;
                byte[] bArr5 = this.f55137j;
                int i30 = aVar.f55151a;
                h11[i23] = bArr5[(i30 >> 10) & 63];
                int i31 = i29 + 1;
                aVar.f55154d = i31;
                h11[i29] = bArr5[(i30 >> 4) & 63];
                int i32 = i31 + 1;
                aVar.f55154d = i32;
                h11[i31] = bArr5[(i30 << 2) & 63];
                if (bArr5 == f55134o) {
                    aVar.f55154d = i32 + 1;
                    h11[i32] = this.f55145b;
                }
            } else {
                throw new IllegalStateException("Impossible modulus " + aVar.f55158h);
            }
        }
        int i33 = aVar.f55157g;
        int i34 = aVar.f55154d;
        int i35 = i33 + (i34 - i23);
        aVar.f55157g = i35;
        if (this.f55148e <= 0 || i35 <= 0) {
            return;
        }
        byte[] bArr6 = this.f55139l;
        System.arraycopy(bArr6, 0, h11, i34, bArr6.length);
        aVar.f55154d += this.f55139l.length;
    }

    @Override // mi.b
    protected boolean k(byte b10) {
        if (b10 >= 0) {
            byte[] bArr = this.f55138k;
            if (b10 < bArr.length && bArr[b10] != -1) {
                return true;
            }
        }
        return false;
    }

    public a(int i9) {
        this(i9, b.f55143i);
    }

    public a(int i9, byte[] bArr) {
        this(i9, bArr, false);
    }

    public a(int i9, byte[] bArr, boolean z10) {
        this(i9, bArr, z10, b.f55142h);
    }

    public a(int i9, byte[] bArr, boolean z10, CodecPolicy codecPolicy) {
        super(3, 4, i9, bArr == null ? 0 : bArr.length, (byte) 61, codecPolicy);
        this.f55138k = f55136q;
        if (bArr != null) {
            if (c(bArr)) {
                String b10 = c.b(bArr);
                throw new IllegalArgumentException("lineSeparator must not contain base64 characters: [" + b10 + "]");
            } else if (i9 > 0) {
                this.f55141n = bArr.length + 4;
                byte[] bArr2 = new byte[bArr.length];
                this.f55139l = bArr2;
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            } else {
                this.f55141n = 4;
                this.f55139l = null;
            }
        } else {
            this.f55141n = 4;
            this.f55139l = null;
        }
        this.f55140m = this.f55141n - 1;
        this.f55137j = z10 ? f55135p : f55134o;
    }
}
