package m2;

import java.util.Arrays;
/* loaded from: classes.dex */
final class u {

    /* renamed from: a  reason: collision with root package name */
    private final int f54746a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f54747b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f54748c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f54749d;

    /* renamed from: e  reason: collision with root package name */
    public int f54750e;

    public u(int i9, int i10) {
        this.f54746a = i9;
        byte[] bArr = new byte[i10 + 3];
        this.f54749d = bArr;
        bArr[2] = 1;
    }

    public void a(byte[] bArr, int i9, int i10) {
        if (this.f54747b) {
            int i11 = i10 - i9;
            byte[] bArr2 = this.f54749d;
            int length = bArr2.length;
            int i12 = this.f54750e;
            if (length < i12 + i11) {
                this.f54749d = Arrays.copyOf(bArr2, (i12 + i11) * 2);
            }
            System.arraycopy(bArr, i9, this.f54749d, this.f54750e, i11);
            this.f54750e += i11;
        }
    }

    public boolean b(int i9) {
        if (this.f54747b) {
            this.f54750e -= i9;
            this.f54747b = false;
            this.f54748c = true;
            return true;
        }
        return false;
    }

    public boolean c() {
        return this.f54748c;
    }

    public void d() {
        this.f54747b = false;
        this.f54748c = false;
    }

    public void e(int i9) {
        com.google.android.exoplayer2.util.a.f(!this.f54747b);
        boolean z10 = i9 == this.f54746a;
        this.f54747b = z10;
        if (z10) {
            this.f54750e = 3;
            this.f54748c = false;
        }
    }
}
