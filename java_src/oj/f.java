package oj;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.n0;
/* loaded from: classes7.dex */
public class f extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private org.bouncycastle.asn1.k f55740a;

    /* renamed from: b  reason: collision with root package name */
    private p f55741b;

    /* renamed from: c  reason: collision with root package name */
    private b f55742c;

    /* renamed from: d  reason: collision with root package name */
    private a f55743d;

    /* renamed from: e  reason: collision with root package name */
    private org.bouncycastle.asn1.k f55744e;

    /* renamed from: f  reason: collision with root package name */
    private c f55745f;

    /* renamed from: g  reason: collision with root package name */
    private org.bouncycastle.asn1.s f55746g;

    /* renamed from: h  reason: collision with root package name */
    private n0 f55747h;

    /* renamed from: i  reason: collision with root package name */
    private m f55748i;

    private f(org.bouncycastle.asn1.s sVar) {
        if (sVar.size() < 6 || sVar.size() > 9) {
            throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
        }
        int i9 = 0;
        if (sVar.M(0) instanceof org.bouncycastle.asn1.k) {
            this.f55740a = org.bouncycastle.asn1.k.K(sVar.M(0));
            i9 = 1;
        } else {
            this.f55740a = new org.bouncycastle.asn1.k(0L);
        }
        this.f55741b = p.x(sVar.M(i9));
        this.f55742c = b.x(sVar.M(i9 + 1));
        this.f55743d = a.y(sVar.M(i9 + 2));
        this.f55744e = org.bouncycastle.asn1.k.K(sVar.M(i9 + 3));
        this.f55745f = c.x(sVar.M(i9 + 4));
        this.f55746g = org.bouncycastle.asn1.s.K(sVar.M(i9 + 5));
        for (int i10 = i9 + 6; i10 < sVar.size(); i10++) {
            org.bouncycastle.asn1.e M = sVar.M(i10);
            if (M instanceof n0) {
                this.f55747h = n0.P(sVar.M(i10));
            } else if ((M instanceof org.bouncycastle.asn1.s) || (M instanceof m)) {
                this.f55748i = m.F(sVar.M(i10));
            }
        }
    }

    public static f F(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public p B() {
        return this.f55741b;
    }

    public b G() {
        return this.f55742c;
    }

    public n0 H() {
        return this.f55747h;
    }

    public org.bouncycastle.asn1.k I() {
        return this.f55744e;
    }

    public a J() {
        return this.f55743d;
    }

    public org.bouncycastle.asn1.k K() {
        return this.f55740a;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(9);
        if (this.f55740a.R() != 0) {
            fVar.a(this.f55740a);
        }
        fVar.a(this.f55741b);
        fVar.a(this.f55742c);
        fVar.a(this.f55743d);
        fVar.a(this.f55744e);
        fVar.a(this.f55745f);
        fVar.a(this.f55746g);
        n0 n0Var = this.f55747h;
        if (n0Var != null) {
            fVar.a(n0Var);
        }
        m mVar = this.f55748i;
        if (mVar != null) {
            fVar.a(mVar);
        }
        return new a1(fVar);
    }

    public c x() {
        return this.f55745f;
    }

    public org.bouncycastle.asn1.s y() {
        return this.f55746g;
    }

    public m z() {
        return this.f55748i;
    }
}
