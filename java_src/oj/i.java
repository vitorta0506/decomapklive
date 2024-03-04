package oj;

import java.util.Enumeration;
import oj.w;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.n0;
/* loaded from: classes7.dex */
public class i extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    w f55755a;

    /* renamed from: b  reason: collision with root package name */
    a f55756b;

    /* renamed from: c  reason: collision with root package name */
    n0 f55757c;

    /* renamed from: d  reason: collision with root package name */
    boolean f55758d = false;

    /* renamed from: e  reason: collision with root package name */
    int f55759e;

    public i(org.bouncycastle.asn1.s sVar) {
        if (sVar.size() != 3) {
            throw new IllegalArgumentException("sequence wrong size for CertificateList");
        }
        this.f55755a = w.y(sVar.M(0));
        this.f55756b = a.y(sVar.M(1));
        this.f55757c = n0.P(sVar.M(2));
    }

    public static i x(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public Enumeration B() {
        return this.f55755a.F();
    }

    public w.b[] F() {
        return this.f55755a.G();
    }

    public n0 G() {
        return this.f55757c;
    }

    public a H() {
        return this.f55756b;
    }

    public w I() {
        return this.f55755a;
    }

    public y J() {
        return this.f55755a.I();
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(3);
        fVar.a(this.f55755a);
        fVar.a(this.f55756b);
        fVar.a(this.f55757c);
        return new a1(fVar);
    }

    @Override // org.bouncycastle.asn1.m
    public int hashCode() {
        if (!this.f55758d) {
            this.f55759e = super.hashCode();
            this.f55758d = true;
        }
        return this.f55759e;
    }

    public mj.c y() {
        return this.f55755a.z();
    }

    public y z() {
        return this.f55755a.B();
    }
}
