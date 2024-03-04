package pj;

import java.util.Enumeration;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class a extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private org.bouncycastle.asn1.k f56893a;

    /* renamed from: b  reason: collision with root package name */
    private org.bouncycastle.asn1.k f56894b;

    /* renamed from: c  reason: collision with root package name */
    private org.bouncycastle.asn1.k f56895c;

    /* renamed from: d  reason: collision with root package name */
    private org.bouncycastle.asn1.k f56896d;

    /* renamed from: e  reason: collision with root package name */
    private b f56897e;

    private a(s sVar) {
        if (sVar.size() < 3 || sVar.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
        }
        Enumeration N = sVar.N();
        this.f56893a = org.bouncycastle.asn1.k.K(N.nextElement());
        this.f56894b = org.bouncycastle.asn1.k.K(N.nextElement());
        this.f56895c = org.bouncycastle.asn1.k.K(N.nextElement());
        org.bouncycastle.asn1.e z10 = z(N);
        if (z10 != null && (z10 instanceof org.bouncycastle.asn1.k)) {
            this.f56896d = org.bouncycastle.asn1.k.K(z10);
            z10 = z(N);
        }
        if (z10 != null) {
            this.f56897e = b.x(z10.f());
        }
    }

    public static a y(Object obj) {
        if (obj == null || (obj instanceof a)) {
            return (a) obj;
        }
        if (obj instanceof s) {
            return new a((s) obj);
        }
        throw new IllegalArgumentException("Invalid DHDomainParameters: " + obj.getClass().getName());
    }

    private static org.bouncycastle.asn1.e z(Enumeration enumeration) {
        if (enumeration.hasMoreElements()) {
            return (org.bouncycastle.asn1.e) enumeration.nextElement();
        }
        return null;
    }

    public org.bouncycastle.asn1.k B() {
        return this.f56893a;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(5);
        fVar.a(this.f56893a);
        fVar.a(this.f56894b);
        fVar.a(this.f56895c);
        org.bouncycastle.asn1.k kVar = this.f56896d;
        if (kVar != null) {
            fVar.a(kVar);
        }
        b bVar = this.f56897e;
        if (bVar != null) {
            fVar.a(bVar);
        }
        return new a1(fVar);
    }

    public org.bouncycastle.asn1.k x() {
        return this.f56894b;
    }
}
