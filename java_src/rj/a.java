package rj;

import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes7.dex */
public abstract class a implements org.bouncycastle.crypto.f, org.bouncycastle.util.f {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f57486a;

    /* renamed from: b  reason: collision with root package name */
    private int f57487b;

    /* renamed from: c  reason: collision with root package name */
    private long f57488c;

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        this.f57486a = new byte[4];
        this.f57487b = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(a aVar) {
        this.f57486a = new byte[4];
        h(aVar);
    }

    @Override // org.bouncycastle.crypto.e
    public void b(byte b10) {
        byte[] bArr = this.f57486a;
        int i9 = this.f57487b;
        int i10 = i9 + 1;
        this.f57487b = i10;
        bArr[i9] = b10;
        if (i10 == bArr.length) {
            l(bArr, 0);
            this.f57487b = 0;
        }
        this.f57488c++;
    }

    @Override // org.bouncycastle.crypto.e
    public void c(byte[] bArr, int i9, int i10) {
        int i11 = 0;
        int max = Math.max(0, i10);
        if (this.f57487b != 0) {
            int i12 = 0;
            while (true) {
                if (i12 >= max) {
                    i11 = i12;
                    break;
                }
                byte[] bArr2 = this.f57486a;
                int i13 = this.f57487b;
                int i14 = i13 + 1;
                this.f57487b = i14;
                int i15 = i12 + 1;
                bArr2[i13] = bArr[i12 + i9];
                if (i14 == 4) {
                    l(bArr2, 0);
                    this.f57487b = 0;
                    i11 = i15;
                    break;
                }
                i12 = i15;
            }
        }
        int i16 = ((max - i11) & (-4)) + i11;
        while (i11 < i16) {
            l(bArr, i9 + i11);
            i11 += 4;
        }
        while (i11 < max) {
            byte[] bArr3 = this.f57486a;
            int i17 = this.f57487b;
            this.f57487b = i17 + 1;
            bArr3[i17] = bArr[i11 + i9];
            i11++;
        }
        this.f57488c += max;
    }

    @Override // org.bouncycastle.crypto.f
    public int f() {
        return 64;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h(a aVar) {
        byte[] bArr = aVar.f57486a;
        System.arraycopy(bArr, 0, this.f57486a, 0, bArr.length);
        this.f57487b = aVar.f57487b;
        this.f57488c = aVar.f57488c;
    }

    public void i() {
        long j10 = this.f57488c << 3;
        byte b10 = ByteCompanionObject.MIN_VALUE;
        while (true) {
            b(b10);
            if (this.f57487b == 0) {
                k(j10);
                j();
                return;
            }
            b10 = 0;
        }
    }

    protected abstract void j();

    protected abstract void k(long j10);

    protected abstract void l(byte[] bArr, int i9);

    @Override // org.bouncycastle.crypto.e
    public void reset() {
        this.f57488c = 0L;
        this.f57487b = 0;
        int i9 = 0;
        while (true) {
            byte[] bArr = this.f57486a;
            if (i9 >= bArr.length) {
                return;
            }
            bArr[i9] = 0;
            i9++;
        }
    }
}
