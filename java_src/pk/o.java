package pk;

import java.math.BigInteger;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
/* loaded from: classes7.dex */
public class o extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f57085a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f57086b;

    private o(s sVar) {
        if (!org.bouncycastle.asn1.k.K(sVar.M(0)).O(BigInteger.valueOf(0L))) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.f57085a = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.K(sVar.M(1)).M());
        this.f57086b = org.bouncycastle.util.a.e(org.bouncycastle.asn1.o.K(sVar.M(2)).M());
    }

    public o(byte[] bArr, byte[] bArr2) {
        this.f57085a = org.bouncycastle.util.a.e(bArr);
        this.f57086b = org.bouncycastle.util.a.e(bArr2);
    }

    public static o x(Object obj) {
        if (obj instanceof o) {
            return (o) obj;
        }
        if (obj != null) {
            return new o(s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        fVar.a(new org.bouncycastle.asn1.k(0L));
        fVar.a(new w0(this.f57085a));
        fVar.a(new w0(this.f57086b));
        return new a1(fVar);
    }

    public byte[] y() {
        return org.bouncycastle.util.a.e(this.f57085a);
    }

    public byte[] z() {
        return org.bouncycastle.util.a.e(this.f57086b);
    }
}
