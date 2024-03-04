package wj;

import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import vj.c0;
/* loaded from: classes7.dex */
public class a implements d {

    /* renamed from: j  reason: collision with root package name */
    private static final byte[] f59513j = org.bouncycastle.util.encoders.d.b("000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F");

    /* renamed from: a  reason: collision with root package name */
    private org.bouncycastle.crypto.prng.c f59514a;

    /* renamed from: b  reason: collision with root package name */
    private org.bouncycastle.crypto.a f59515b;

    /* renamed from: c  reason: collision with root package name */
    private int f59516c;

    /* renamed from: d  reason: collision with root package name */
    private int f59517d;

    /* renamed from: e  reason: collision with root package name */
    private int f59518e;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f59519f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f59520g;

    /* renamed from: h  reason: collision with root package name */
    private long f59521h = 0;

    /* renamed from: i  reason: collision with root package name */
    private boolean f59522i;

    public a(org.bouncycastle.crypto.a aVar, int i9, int i10, org.bouncycastle.crypto.prng.c cVar, byte[] bArr, byte[] bArr2) {
        this.f59522i = false;
        this.f59514a = cVar;
        this.f59515b = aVar;
        this.f59516c = i9;
        this.f59518e = i10;
        this.f59517d = (aVar.b() * 8) + i9;
        this.f59522i = n(aVar);
        if (i10 > 256) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (m(aVar, i9) < i10) {
            throw new IllegalArgumentException("Requested security strength is not supported by block cipher and key size");
        }
        if (cVar.b() < i10) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        e(l(), bArr2, bArr);
    }

    private void c(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int b10 = this.f59515b.b();
        byte[] bArr5 = new byte[b10];
        int length = bArr4.length / b10;
        byte[] bArr6 = new byte[b10];
        this.f59515b.a(true, new c0(k(bArr2)));
        this.f59515b.c(bArr3, 0, bArr5, 0);
        for (int i9 = 0; i9 < length; i9++) {
            h(bArr6, bArr5, bArr4, i9 * b10);
            this.f59515b.c(bArr6, 0, bArr5, 0);
        }
        System.arraycopy(bArr5, 0, bArr, 0, bArr.length);
    }

    private byte[] d(byte[] bArr, int i9) {
        int b10 = this.f59515b.b();
        int length = bArr.length;
        int i10 = i9 / 8;
        int i11 = length + 8;
        byte[] bArr2 = new byte[((((i11 + 1) + b10) - 1) / b10) * b10];
        j(bArr2, length, 0);
        j(bArr2, i10, 4);
        System.arraycopy(bArr, 0, bArr2, 8, length);
        bArr2[i11] = ByteCompanionObject.MIN_VALUE;
        int i12 = this.f59516c;
        int i13 = (i12 / 8) + b10;
        byte[] bArr3 = new byte[i13];
        byte[] bArr4 = new byte[b10];
        byte[] bArr5 = new byte[b10];
        int i14 = i12 / 8;
        byte[] bArr6 = new byte[i14];
        System.arraycopy(f59513j, 0, bArr6, 0, i14);
        int i15 = 0;
        while (true) {
            int i16 = i15 * b10;
            if (i16 * 8 >= this.f59516c + (b10 * 8)) {
                break;
            }
            j(bArr5, i15, 0);
            c(bArr4, bArr6, bArr5, bArr2);
            int i17 = i13 - i16;
            if (i17 > b10) {
                i17 = b10;
            }
            System.arraycopy(bArr4, 0, bArr3, i16, i17);
            i15++;
        }
        byte[] bArr7 = new byte[b10];
        System.arraycopy(bArr3, 0, bArr6, 0, i14);
        System.arraycopy(bArr3, i14, bArr7, 0, b10);
        byte[] bArr8 = new byte[i10];
        this.f59515b.a(true, new c0(k(bArr6)));
        int i18 = 0;
        while (true) {
            int i19 = i18 * b10;
            if (i19 >= i10) {
                return bArr8;
            }
            this.f59515b.c(bArr7, 0, bArr7, 0);
            int i20 = i10 - i19;
            if (i20 > b10) {
                i20 = b10;
            }
            System.arraycopy(bArr7, 0, bArr8, i19, i20);
            i18++;
        }
    }

    private void e(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] d10 = d(org.bouncycastle.util.a.k(bArr, bArr2, bArr3), this.f59517d);
        int b10 = this.f59515b.b();
        byte[] bArr4 = new byte[(this.f59516c + 7) / 8];
        this.f59519f = bArr4;
        byte[] bArr5 = new byte[b10];
        this.f59520g = bArr5;
        g(d10, bArr4, bArr5);
        this.f59521h = 1L;
    }

    private void f(byte[] bArr) {
        g(d(org.bouncycastle.util.a.j(l(), bArr), this.f59517d), this.f59519f, this.f59520g);
        this.f59521h = 1L;
    }

    private void g(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int length = bArr.length;
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[this.f59515b.b()];
        int b10 = this.f59515b.b();
        this.f59515b.a(true, new c0(k(bArr2)));
        int i9 = 0;
        while (true) {
            int i10 = i9 * b10;
            if (i10 >= bArr.length) {
                h(bArr4, bArr, bArr4, 0);
                System.arraycopy(bArr4, 0, bArr2, 0, bArr2.length);
                System.arraycopy(bArr4, bArr2.length, bArr3, 0, bArr3.length);
                return;
            }
            i(bArr3);
            this.f59515b.c(bArr3, 0, bArr5, 0);
            int i11 = length - i10;
            if (i11 > b10) {
                i11 = b10;
            }
            System.arraycopy(bArr5, 0, bArr4, i10, i11);
            i9++;
        }
    }

    private void h(byte[] bArr, byte[] bArr2, byte[] bArr3, int i9) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr[i10] = (byte) (bArr2[i10] ^ bArr3[i10 + i9]);
        }
    }

    private void i(byte[] bArr) {
        int i9 = 1;
        for (int i10 = 1; i10 <= bArr.length; i10++) {
            int i11 = (bArr[bArr.length - i10] & UByte.MAX_VALUE) + i9;
            i9 = i11 > 255 ? 1 : 0;
            bArr[bArr.length - i10] = (byte) i11;
        }
    }

    private void j(byte[] bArr, int i9, int i10) {
        bArr[i10 + 0] = (byte) (i9 >> 24);
        bArr[i10 + 1] = (byte) (i9 >> 16);
        bArr[i10 + 2] = (byte) (i9 >> 8);
        bArr[i10 + 3] = (byte) i9;
    }

    private byte[] l() {
        byte[] a10 = this.f59514a.a();
        if (a10.length >= (this.f59518e + 7) / 8) {
            return a10;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    private int m(org.bouncycastle.crypto.a aVar, int i9) {
        if (n(aVar) && i9 == 168) {
            return 112;
        }
        if (aVar.getAlgorithmName().equals("AES")) {
            return i9;
        }
        return -1;
    }

    private boolean n(org.bouncycastle.crypto.a aVar) {
        return aVar.getAlgorithmName().equals("DESede") || aVar.getAlgorithmName().equals("TDEA");
    }

    private void o(byte[] bArr, int i9, byte[] bArr2, int i10) {
        int i11 = i9 + 0;
        bArr2[i10 + 0] = (byte) (bArr[i11] & 254);
        int i12 = i9 + 1;
        bArr2[i10 + 1] = (byte) ((bArr[i11] << 7) | ((bArr[i12] & 252) >>> 1));
        int i13 = i9 + 2;
        bArr2[i10 + 2] = (byte) ((bArr[i12] << 6) | ((bArr[i13] & 248) >>> 2));
        int i14 = i9 + 3;
        bArr2[i10 + 3] = (byte) ((bArr[i13] << 5) | ((bArr[i14] & 240) >>> 3));
        int i15 = i9 + 4;
        bArr2[i10 + 4] = (byte) ((bArr[i14] << 4) | ((bArr[i15] & 224) >>> 4));
        int i16 = i9 + 5;
        bArr2[i10 + 5] = (byte) ((bArr[i15] << 3) | ((bArr[i16] & 192) >>> 5));
        int i17 = i9 + 6;
        bArr2[i10 + 6] = (byte) ((bArr[i16] << 2) | ((bArr[i17] & ByteCompanionObject.MIN_VALUE) >>> 6));
        int i18 = i10 + 7;
        bArr2[i18] = (byte) (bArr[i17] << 1);
        while (i10 <= i18) {
            byte b10 = bArr2[i10];
            bArr2[i10] = (byte) (((((b10 >> 7) ^ ((((((b10 >> 1) ^ (b10 >> 2)) ^ (b10 >> 3)) ^ (b10 >> 4)) ^ (b10 >> 5)) ^ (b10 >> 6))) ^ 1) & 1) | (b10 & 254));
            i10++;
        }
    }

    @Override // wj.d
    public int a(byte[] bArr, byte[] bArr2, boolean z10) {
        byte[] bArr3;
        boolean z11 = this.f59522i;
        long j10 = this.f59521h;
        if (z11) {
            if (j10 > 2147483648L) {
                return -1;
            }
            if (e.d(bArr, 512)) {
                throw new IllegalArgumentException("Number of bits per request limited to 4096");
            }
        } else if (j10 > 140737488355328L) {
            return -1;
        } else {
            if (e.d(bArr, 32768)) {
                throw new IllegalArgumentException("Number of bits per request limited to 262144");
            }
        }
        if (z10) {
            f(bArr2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            bArr3 = d(bArr2, this.f59517d);
            g(bArr3, this.f59519f, this.f59520g);
        } else {
            bArr3 = new byte[this.f59517d / 8];
        }
        int length = this.f59520g.length;
        byte[] bArr4 = new byte[length];
        this.f59515b.a(true, new c0(k(this.f59519f)));
        for (int i9 = 0; i9 <= bArr.length / length; i9++) {
            int i10 = i9 * length;
            int length2 = bArr.length - i10 > length ? length : bArr.length - (this.f59520g.length * i9);
            if (length2 != 0) {
                i(this.f59520g);
                this.f59515b.c(this.f59520g, 0, bArr4, 0);
                System.arraycopy(bArr4, 0, bArr, i10, length2);
            }
        }
        g(bArr3, this.f59519f, this.f59520g);
        this.f59521h++;
        return bArr.length * 8;
    }

    @Override // wj.d
    public void b(byte[] bArr) {
        f(bArr);
    }

    byte[] k(byte[] bArr) {
        if (this.f59522i) {
            byte[] bArr2 = new byte[24];
            o(bArr, 0, bArr2, 0);
            o(bArr, 7, bArr2, 8);
            o(bArr, 14, bArr2, 16);
            return bArr2;
        }
        return bArr;
    }
}
