package oj;

import java.io.IOException;
import java.util.Enumeration;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.n0;
/* loaded from: classes7.dex */
public class v extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private a f55815a;

    /* renamed from: b  reason: collision with root package name */
    private n0 f55816b;

    public v(a aVar, org.bouncycastle.asn1.e eVar) throws IOException {
        this.f55816b = new n0(eVar);
        this.f55815a = aVar;
    }

    public v(a aVar, byte[] bArr) {
        this.f55816b = new n0(bArr);
        this.f55815a = aVar;
    }

    public v(org.bouncycastle.asn1.s sVar) {
        if (sVar.size() == 2) {
            Enumeration N = sVar.N();
            this.f55815a = a.y(N.nextElement());
            this.f55816b = n0.P(N.nextElement());
            return;
        }
        throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
    }

    public static v z(Object obj) {
        if (obj instanceof v) {
            return (v) obj;
        }
        if (obj != null) {
            return new v(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public n0 B() {
        return this.f55816b;
    }

    public org.bouncycastle.asn1.r F() throws IOException {
        return org.bouncycastle.asn1.r.G(this.f55816b.M());
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        fVar.a(this.f55815a);
        fVar.a(this.f55816b);
        return new a1(fVar);
    }

    public a x() {
        return this.f55815a;
    }

    public a y() {
        return this.f55815a;
    }
}
