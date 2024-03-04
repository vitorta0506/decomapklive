package rk;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final e f57564a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f57565b;

    /* renamed from: c  reason: collision with root package name */
    private final int f57566c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f57567d;

    public f(e eVar, byte[] bArr, int i9, byte[] bArr2) {
        this.f57564a = eVar;
        this.f57565b = bArr;
        this.f57566c = i9;
        this.f57567d = bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q a() {
        q qVar = new q(this.f57565b, this.f57567d, b.a(this.f57564a.b()));
        qVar.e(this.f57566c);
        return qVar;
    }

    public byte[] b() {
        return this.f57565b;
    }

    public e c() {
        return this.f57564a;
    }

    public int d() {
        return this.f57566c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i e(n nVar, byte[][] bArr) {
        byte[] bArr2 = new byte[32];
        q a10 = a();
        a10.d(-3);
        a10.a(bArr2, false);
        org.bouncycastle.crypto.e a11 = b.a(this.f57564a.b());
        p.a(b(), a11);
        p.c(d(), a11);
        p.b((short) -32383, a11);
        p.a(bArr2, a11);
        return new i(this, nVar, a11, bArr2, bArr);
    }
}
