package rk;
/* loaded from: classes7.dex */
class q {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f57608a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f57609b;

    /* renamed from: c  reason: collision with root package name */
    private final org.bouncycastle.crypto.e f57610c;

    /* renamed from: d  reason: collision with root package name */
    private int f57611d;

    /* renamed from: e  reason: collision with root package name */
    private int f57612e;

    public q(byte[] bArr, byte[] bArr2, org.bouncycastle.crypto.e eVar) {
        this.f57608a = bArr;
        this.f57609b = bArr2;
        this.f57610c = eVar;
    }

    public void a(byte[] bArr, boolean z10) {
        b(bArr, z10, 0);
    }

    public void b(byte[] bArr, boolean z10, int i9) {
        c(bArr, i9);
        if (z10) {
            this.f57612e++;
        }
    }

    public byte[] c(byte[] bArr, int i9) {
        if (bArr.length >= this.f57610c.d()) {
            org.bouncycastle.crypto.e eVar = this.f57610c;
            byte[] bArr2 = this.f57608a;
            eVar.c(bArr2, 0, bArr2.length);
            this.f57610c.b((byte) (this.f57611d >>> 24));
            this.f57610c.b((byte) (this.f57611d >>> 16));
            this.f57610c.b((byte) (this.f57611d >>> 8));
            this.f57610c.b((byte) this.f57611d);
            this.f57610c.b((byte) (this.f57612e >>> 8));
            this.f57610c.b((byte) this.f57612e);
            this.f57610c.b((byte) -1);
            org.bouncycastle.crypto.e eVar2 = this.f57610c;
            byte[] bArr3 = this.f57609b;
            eVar2.c(bArr3, 0, bArr3.length);
            this.f57610c.a(bArr, i9);
            return bArr;
        }
        throw new IllegalArgumentException("target length is less than digest size.");
    }

    public void d(int i9) {
        this.f57612e = i9;
    }

    public void e(int i9) {
        this.f57611d = i9;
    }
}
