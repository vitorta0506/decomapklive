package oj;

import org.bouncycastle.asn1.a1;
/* loaded from: classes7.dex */
public class c extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    org.bouncycastle.asn1.i f55708a;

    /* renamed from: b  reason: collision with root package name */
    org.bouncycastle.asn1.i f55709b;

    private c(org.bouncycastle.asn1.s sVar) {
        if (sVar.size() == 2) {
            this.f55708a = org.bouncycastle.asn1.i.O(sVar.M(0));
            this.f55709b = org.bouncycastle.asn1.i.O(sVar.M(1));
            return;
        }
        throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
    }

    public static c x(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(2);
        fVar.a(this.f55708a);
        fVar.a(this.f55709b);
        return new a1(fVar);
    }

    public org.bouncycastle.asn1.i y() {
        return this.f55709b;
    }

    public org.bouncycastle.asn1.i z() {
        return this.f55708a;
    }
}
