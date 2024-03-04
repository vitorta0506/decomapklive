package oj;

import java.text.ParseException;
import java.util.Date;
/* loaded from: classes7.dex */
public class y extends org.bouncycastle.asn1.m implements org.bouncycastle.asn1.d {

    /* renamed from: a  reason: collision with root package name */
    org.bouncycastle.asn1.r f55841a;

    public y(org.bouncycastle.asn1.r rVar) {
        if (!(rVar instanceof org.bouncycastle.asn1.z) && !(rVar instanceof org.bouncycastle.asn1.i)) {
            throw new IllegalArgumentException("unknown object passed to Time");
        }
        this.f55841a = rVar;
    }

    public static y y(Object obj) {
        if (obj == null || (obj instanceof y)) {
            return (y) obj;
        }
        if (obj instanceof org.bouncycastle.asn1.z) {
            return new y((org.bouncycastle.asn1.z) obj);
        }
        if (obj instanceof org.bouncycastle.asn1.i) {
            return new y((org.bouncycastle.asn1.i) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        return this.f55841a;
    }

    public String toString() {
        return z();
    }

    public Date x() {
        try {
            org.bouncycastle.asn1.r rVar = this.f55841a;
            return rVar instanceof org.bouncycastle.asn1.z ? ((org.bouncycastle.asn1.z) rVar).K() : ((org.bouncycastle.asn1.i) rVar).N();
        } catch (ParseException e10) {
            throw new IllegalStateException("invalid date string: " + e10.getMessage());
        }
    }

    public String z() {
        org.bouncycastle.asn1.r rVar = this.f55841a;
        return rVar instanceof org.bouncycastle.asn1.z ? ((org.bouncycastle.asn1.z) rVar).L() : ((org.bouncycastle.asn1.i) rVar).P();
    }
}
