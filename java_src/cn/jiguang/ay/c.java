package cn.jiguang.ay;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f2236a;

    /* renamed from: b  reason: collision with root package name */
    private int f2237b;

    /* renamed from: c  reason: collision with root package name */
    private int f2238c;

    public c() {
        this(32);
    }

    public c(int i9) {
        this.f2236a = new byte[i9];
        this.f2237b = 0;
        this.f2238c = -1;
    }

    private void a(long j10, int i9) {
        long j11 = 1 << i9;
        if (j10 < 0 || j10 > j11) {
            throw new IllegalArgumentException(j10 + " out of range for " + i9 + " bit value");
        }
    }

    private void d(int i9) {
        byte[] bArr = this.f2236a;
        int length = bArr.length;
        int i10 = this.f2237b;
        if (length - i10 >= i9) {
            return;
        }
        int length2 = bArr.length * 2;
        if (length2 < i10 + i9) {
            length2 = i10 + i9;
        }
        byte[] bArr2 = new byte[length2];
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        this.f2236a = bArr2;
    }

    public int a() {
        return this.f2237b;
    }

    public void a(int i9) {
        if (i9 > this.f2237b) {
            throw new IllegalArgumentException("cannot jump past end of data");
        }
        this.f2237b = i9;
    }

    public void a(int i9, int i10) {
        a(i9, 16);
        if (i10 > this.f2237b - 2) {
            throw new IllegalArgumentException("cannot write past end of data");
        }
        byte[] bArr = this.f2236a;
        bArr[i10] = (byte) ((i9 >>> 8) & 255);
        bArr[i10 + 1] = (byte) (i9 & 255);
    }

    public void a(long j10) {
        a(j10, 32);
        d(4);
        byte[] bArr = this.f2236a;
        int i9 = this.f2237b;
        int i10 = i9 + 1;
        this.f2237b = i10;
        bArr[i9] = (byte) ((j10 >>> 24) & 255);
        int i11 = i10 + 1;
        this.f2237b = i11;
        bArr[i10] = (byte) ((j10 >>> 16) & 255);
        int i12 = i11 + 1;
        this.f2237b = i12;
        bArr[i11] = (byte) ((j10 >>> 8) & 255);
        this.f2237b = i12 + 1;
        bArr[i12] = (byte) (j10 & 255);
    }

    public void a(byte[] bArr) {
        a(bArr, 0, bArr.length);
    }

    public void a(byte[] bArr, int i9, int i10) {
        d(i10);
        System.arraycopy(bArr, i9, this.f2236a, this.f2237b, i10);
        this.f2237b += i10;
    }

    public void b(int i9) {
        a(i9, 8);
        d(1);
        byte[] bArr = this.f2236a;
        int i10 = this.f2237b;
        this.f2237b = i10 + 1;
        bArr[i10] = (byte) (i9 & 255);
    }

    public byte[] b() {
        int i9 = this.f2237b;
        byte[] bArr = new byte[i9];
        System.arraycopy(this.f2236a, 0, bArr, 0, i9);
        return bArr;
    }

    public void c(int i9) {
        a(i9, 16);
        d(2);
        byte[] bArr = this.f2236a;
        int i10 = this.f2237b;
        int i11 = i10 + 1;
        this.f2237b = i11;
        bArr[i10] = (byte) ((i9 >>> 8) & 255);
        this.f2237b = i11 + 1;
        bArr[i11] = (byte) (i9 & 255);
    }
}
