package rk;
/* loaded from: classes7.dex */
public class i implements org.bouncycastle.crypto.e {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f57571a;

    /* renamed from: b  reason: collision with root package name */
    private final f f57572b;

    /* renamed from: c  reason: collision with root package name */
    private final n f57573c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[][] f57574d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f57575e = null;

    /* renamed from: f  reason: collision with root package name */
    private volatile org.bouncycastle.crypto.e f57576f;

    public i(f fVar, n nVar, org.bouncycastle.crypto.e eVar, byte[] bArr, byte[][] bArr2) {
        this.f57572b = fVar;
        this.f57573c = nVar;
        this.f57576f = eVar;
        this.f57571a = bArr;
        this.f57574d = bArr2;
    }

    @Override // org.bouncycastle.crypto.e
    public int a(byte[] bArr, int i9) {
        return this.f57576f.a(bArr, i9);
    }

    @Override // org.bouncycastle.crypto.e
    public void b(byte b10) {
        this.f57576f.b(b10);
    }

    @Override // org.bouncycastle.crypto.e
    public void c(byte[] bArr, int i9, int i10) {
        this.f57576f.c(bArr, i9, i10);
    }

    @Override // org.bouncycastle.crypto.e
    public int d() {
        return this.f57576f.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] g() {
        return this.f57571a;
    }

    @Override // org.bouncycastle.crypto.e
    public String getAlgorithmName() {
        return this.f57576f.getAlgorithmName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[][] h() {
        return this.f57574d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f i() {
        return this.f57572b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] j() {
        byte[] bArr = new byte[34];
        this.f57576f.a(bArr, 0);
        this.f57576f = null;
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n k() {
        return this.f57573c;
    }

    @Override // org.bouncycastle.crypto.e
    public void reset() {
        this.f57576f.reset();
    }
}
