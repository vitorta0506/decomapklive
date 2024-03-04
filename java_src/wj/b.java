package wj;

import org.bouncycastle.crypto.g;
import vj.c0;
/* loaded from: classes7.dex */
public class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f59523a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f59524b;

    /* renamed from: c  reason: collision with root package name */
    private long f59525c;

    /* renamed from: d  reason: collision with root package name */
    private org.bouncycastle.crypto.prng.c f59526d;

    /* renamed from: e  reason: collision with root package name */
    private g f59527e;

    /* renamed from: f  reason: collision with root package name */
    private int f59528f;

    public b(g gVar, int i9, org.bouncycastle.crypto.prng.c cVar, byte[] bArr, byte[] bArr2) {
        if (i9 > e.b(gVar)) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (cVar.b() < i9) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        this.f59528f = i9;
        this.f59526d = cVar;
        this.f59527e = gVar;
        byte[] k10 = org.bouncycastle.util.a.k(c(), bArr2, bArr);
        byte[] bArr3 = new byte[gVar.d()];
        this.f59523a = bArr3;
        byte[] bArr4 = new byte[bArr3.length];
        this.f59524b = bArr4;
        org.bouncycastle.util.a.o(bArr4, (byte) 1);
        d(k10);
        this.f59525c = 1L;
    }

    private byte[] c() {
        byte[] a10 = this.f59526d.a();
        if (a10.length >= (this.f59528f + 7) / 8) {
            return a10;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    private void d(byte[] bArr) {
        e(bArr, (byte) 0);
        if (bArr != null) {
            e(bArr, (byte) 1);
        }
    }

    private void e(byte[] bArr, byte b10) {
        this.f59527e.e(new c0(this.f59523a));
        g gVar = this.f59527e;
        byte[] bArr2 = this.f59524b;
        gVar.c(bArr2, 0, bArr2.length);
        this.f59527e.b(b10);
        if (bArr != null) {
            this.f59527e.c(bArr, 0, bArr.length);
        }
        this.f59527e.a(this.f59523a, 0);
        this.f59527e.e(new c0(this.f59523a));
        g gVar2 = this.f59527e;
        byte[] bArr3 = this.f59524b;
        gVar2.c(bArr3, 0, bArr3.length);
        this.f59527e.a(this.f59524b, 0);
    }

    @Override // wj.d
    public int a(byte[] bArr, byte[] bArr2, boolean z10) {
        int length = bArr.length * 8;
        if (length <= 262144) {
            if (this.f59525c > 140737488355328L) {
                return -1;
            }
            if (z10) {
                b(bArr2);
                bArr2 = null;
            }
            if (bArr2 != null) {
                d(bArr2);
            }
            int length2 = bArr.length;
            byte[] bArr3 = new byte[length2];
            int length3 = bArr.length / this.f59524b.length;
            this.f59527e.e(new c0(this.f59523a));
            for (int i9 = 0; i9 < length3; i9++) {
                g gVar = this.f59527e;
                byte[] bArr4 = this.f59524b;
                gVar.c(bArr4, 0, bArr4.length);
                this.f59527e.a(this.f59524b, 0);
                byte[] bArr5 = this.f59524b;
                System.arraycopy(bArr5, 0, bArr3, bArr5.length * i9, bArr5.length);
            }
            byte[] bArr6 = this.f59524b;
            if (bArr6.length * length3 < length2) {
                this.f59527e.c(bArr6, 0, bArr6.length);
                this.f59527e.a(this.f59524b, 0);
                byte[] bArr7 = this.f59524b;
                System.arraycopy(bArr7, 0, bArr3, bArr7.length * length3, length2 - (length3 * bArr7.length));
            }
            d(bArr2);
            this.f59525c++;
            System.arraycopy(bArr3, 0, bArr, 0, bArr.length);
            return length;
        }
        throw new IllegalArgumentException("Number of bits per request limited to 262144");
    }

    @Override // wj.d
    public void b(byte[] bArr) {
        d(org.bouncycastle.util.a.j(c(), bArr));
        this.f59525c = 1L;
    }
}
