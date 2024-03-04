package oj;

import org.bouncycastle.asn1.d1;
/* loaded from: classes7.dex */
public class b extends org.bouncycastle.asn1.m implements org.bouncycastle.asn1.d {

    /* renamed from: a  reason: collision with root package name */
    org.bouncycastle.asn1.e f55678a;

    /* renamed from: b  reason: collision with root package name */
    org.bouncycastle.asn1.r f55679b;

    public b(o oVar) {
        this.f55678a = oVar;
        this.f55679b = oVar.f();
    }

    public b(z zVar) {
        this.f55678a = zVar;
        this.f55679b = new d1(false, 0, zVar);
    }

    public static b x(Object obj) {
        if (obj == null || (obj instanceof b)) {
            return (b) obj;
        }
        if (obj instanceof z) {
            return new b(z.x(obj));
        }
        if (obj instanceof o) {
            return new b((o) obj);
        }
        if (obj instanceof org.bouncycastle.asn1.y) {
            return new b(z.y((org.bouncycastle.asn1.y) obj, false));
        }
        if (obj instanceof org.bouncycastle.asn1.s) {
            return new b(o.x(obj));
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        return this.f55679b;
    }

    public org.bouncycastle.asn1.e y() {
        return this.f55678a;
    }
}
