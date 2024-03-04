package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.w0;
/* loaded from: classes7.dex */
public class m extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f57075a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f57076b;

    public m(byte[] bArr, byte[] bArr2) {
        this.f57075a = org.bouncycastle.util.a.e(bArr);
        this.f57076b = org.bouncycastle.util.a.e(bArr2);
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        fVar.a(new org.bouncycastle.asn1.k(0L));
        fVar.a(new w0(this.f57075a));
        fVar.a(new w0(this.f57076b));
        return new a1(fVar);
    }
}
