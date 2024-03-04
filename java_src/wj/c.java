package wj;

import com.guochao.faceshow.dialog.Photo_Dialog_Fragment;
import java.util.Hashtable;
import kotlin.UByte;
/* loaded from: classes7.dex */
public class c implements d {

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f59529h = {1};

    /* renamed from: i  reason: collision with root package name */
    private static final Hashtable f59530i;

    /* renamed from: a  reason: collision with root package name */
    private org.bouncycastle.crypto.e f59531a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f59532b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f59533c;

    /* renamed from: d  reason: collision with root package name */
    private long f59534d;

    /* renamed from: e  reason: collision with root package name */
    private org.bouncycastle.crypto.prng.c f59535e;

    /* renamed from: f  reason: collision with root package name */
    private int f59536f;

    /* renamed from: g  reason: collision with root package name */
    private int f59537g;

    static {
        Hashtable hashtable = new Hashtable();
        f59530i = hashtable;
        hashtable.put("SHA-1", org.bouncycastle.util.e.d(440));
        hashtable.put("SHA-224", org.bouncycastle.util.e.d(440));
        hashtable.put("SHA-256", org.bouncycastle.util.e.d(440));
        hashtable.put("SHA-512/256", org.bouncycastle.util.e.d(440));
        hashtable.put("SHA-512/224", org.bouncycastle.util.e.d(440));
        hashtable.put("SHA-384", org.bouncycastle.util.e.d(Photo_Dialog_Fragment.REQUEST_CODE));
        hashtable.put("SHA-512", org.bouncycastle.util.e.d(Photo_Dialog_Fragment.REQUEST_CODE));
    }

    public c(org.bouncycastle.crypto.e eVar, int i9, org.bouncycastle.crypto.prng.c cVar, byte[] bArr, byte[] bArr2) {
        if (i9 > e.a(eVar)) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (cVar.b() < i9) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        this.f59531a = eVar;
        this.f59535e = cVar;
        this.f59536f = i9;
        this.f59537g = ((Integer) f59530i.get(eVar.getAlgorithmName())).intValue();
        byte[] c10 = e.c(this.f59531a, org.bouncycastle.util.a.k(e(), bArr2, bArr), this.f59537g);
        this.f59532b = c10;
        byte[] bArr3 = new byte[c10.length + 1];
        System.arraycopy(c10, 0, bArr3, 1, c10.length);
        this.f59533c = e.c(this.f59531a, bArr3, this.f59537g);
        this.f59534d = 1L;
    }

    private void c(byte[] bArr, byte[] bArr2) {
        int i9 = 0;
        for (int i10 = 1; i10 <= bArr2.length; i10++) {
            int i11 = (bArr[bArr.length - i10] & UByte.MAX_VALUE) + (bArr2[bArr2.length - i10] & UByte.MAX_VALUE) + i9;
            i9 = i11 > 255 ? 1 : 0;
            bArr[bArr.length - i10] = (byte) i11;
        }
        for (int length = bArr2.length + 1; length <= bArr.length; length++) {
            int i12 = (bArr[bArr.length - length] & UByte.MAX_VALUE) + i9;
            i9 = i12 > 255 ? 1 : 0;
            bArr[bArr.length - length] = (byte) i12;
        }
    }

    private void d(byte[] bArr, byte[] bArr2) {
        this.f59531a.c(bArr, 0, bArr.length);
        this.f59531a.a(bArr2, 0);
    }

    private byte[] e() {
        byte[] a10 = this.f59535e.a();
        if (a10.length >= (this.f59536f + 7) / 8) {
            return a10;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    private byte[] f(byte[] bArr) {
        byte[] bArr2 = new byte[this.f59531a.d()];
        d(bArr, bArr2);
        return bArr2;
    }

    private byte[] g(byte[] bArr, int i9) {
        int i10 = i9 / 8;
        int d10 = i10 / this.f59531a.d();
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        byte[] bArr3 = new byte[i10];
        int d11 = this.f59531a.d();
        byte[] bArr4 = new byte[d11];
        for (int i11 = 0; i11 <= d10; i11++) {
            d(bArr2, bArr4);
            int i12 = i11 * d11;
            int i13 = i10 - i12;
            if (i13 > d11) {
                i13 = d11;
            }
            System.arraycopy(bArr4, 0, bArr3, i12, i13);
            c(bArr2, f59529h);
        }
        return bArr3;
    }

    @Override // wj.d
    public int a(byte[] bArr, byte[] bArr2, boolean z10) {
        long j10;
        int length = bArr.length * 8;
        if (length <= 262144) {
            if (this.f59534d > 140737488355328L) {
                return -1;
            }
            if (z10) {
                b(bArr2);
                bArr2 = null;
            }
            if (bArr2 != null) {
                byte[] bArr3 = this.f59532b;
                byte[] bArr4 = new byte[bArr3.length + 1 + bArr2.length];
                bArr4[0] = 2;
                System.arraycopy(bArr3, 0, bArr4, 1, bArr3.length);
                System.arraycopy(bArr2, 0, bArr4, this.f59532b.length + 1, bArr2.length);
                c(this.f59532b, f(bArr4));
            }
            byte[] g10 = g(this.f59532b, length);
            byte[] bArr5 = this.f59532b;
            byte[] bArr6 = new byte[bArr5.length + 1];
            System.arraycopy(bArr5, 0, bArr6, 1, bArr5.length);
            bArr6[0] = 3;
            c(this.f59532b, f(bArr6));
            c(this.f59532b, this.f59533c);
            c(this.f59532b, new byte[]{(byte) (j10 >> 24), (byte) (j10 >> 16), (byte) (j10 >> 8), (byte) this.f59534d});
            this.f59534d++;
            System.arraycopy(g10, 0, bArr, 0, bArr.length);
            return length;
        }
        throw new IllegalArgumentException("Number of bits per request limited to 262144");
    }

    @Override // wj.d
    public void b(byte[] bArr) {
        byte[] c10 = e.c(this.f59531a, org.bouncycastle.util.a.l(f59529h, this.f59532b, e(), bArr), this.f59537g);
        this.f59532b = c10;
        byte[] bArr2 = new byte[c10.length + 1];
        bArr2[0] = 0;
        System.arraycopy(c10, 0, bArr2, 1, c10.length);
        this.f59533c = e.c(this.f59531a, bArr2, this.f59537g);
        this.f59534d = 1L;
    }
}
