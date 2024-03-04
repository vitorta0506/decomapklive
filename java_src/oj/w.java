package oj;

import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.d1;
/* loaded from: classes7.dex */
public class w extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    org.bouncycastle.asn1.k f55817a;

    /* renamed from: b  reason: collision with root package name */
    oj.a f55818b;

    /* renamed from: c  reason: collision with root package name */
    mj.c f55819c;

    /* renamed from: d  reason: collision with root package name */
    y f55820d;

    /* renamed from: e  reason: collision with root package name */
    y f55821e;

    /* renamed from: f  reason: collision with root package name */
    org.bouncycastle.asn1.s f55822f;

    /* renamed from: g  reason: collision with root package name */
    m f55823g;

    /* loaded from: classes7.dex */
    public static class b extends org.bouncycastle.asn1.m {

        /* renamed from: a  reason: collision with root package name */
        org.bouncycastle.asn1.s f55824a;

        /* renamed from: b  reason: collision with root package name */
        m f55825b;

        private b(org.bouncycastle.asn1.s sVar) {
            if (sVar.size() >= 2 && sVar.size() <= 3) {
                this.f55824a = sVar;
                return;
            }
            throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
        }

        public static b y(Object obj) {
            if (obj instanceof b) {
                return (b) obj;
            }
            if (obj != null) {
                return new b(org.bouncycastle.asn1.s.K(obj));
            }
            return null;
        }

        public boolean B() {
            return this.f55824a.size() == 3;
        }

        @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
        public org.bouncycastle.asn1.r f() {
            return this.f55824a;
        }

        public m x() {
            if (this.f55825b == null && this.f55824a.size() == 3) {
                this.f55825b = m.F(this.f55824a.M(2));
            }
            return this.f55825b;
        }

        public org.bouncycastle.asn1.k z() {
            return org.bouncycastle.asn1.k.K(this.f55824a.M(0));
        }
    }

    /* loaded from: classes7.dex */
    private class c implements Enumeration {
        private c() {
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return false;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            throw new NoSuchElementException("Empty Enumeration");
        }
    }

    /* loaded from: classes7.dex */
    private class d implements Enumeration {

        /* renamed from: a  reason: collision with root package name */
        private final Enumeration f55827a;

        d(Enumeration enumeration) {
            this.f55827a = enumeration;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f55827a.hasMoreElements();
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            return b.y(this.f55827a.nextElement());
        }
    }

    public w(org.bouncycastle.asn1.s sVar) {
        if (sVar.size() < 3 || sVar.size() > 7) {
            throw new IllegalArgumentException("Bad sequence size: " + sVar.size());
        }
        int i9 = 0;
        if (sVar.M(0) instanceof org.bouncycastle.asn1.k) {
            this.f55817a = org.bouncycastle.asn1.k.K(sVar.M(0));
            i9 = 1;
        } else {
            this.f55817a = null;
        }
        int i10 = i9 + 1;
        this.f55818b = oj.a.y(sVar.M(i9));
        int i11 = i10 + 1;
        this.f55819c = mj.c.x(sVar.M(i10));
        int i12 = i11 + 1;
        this.f55820d = y.y(sVar.M(i11));
        if (i12 < sVar.size() && ((sVar.M(i12) instanceof org.bouncycastle.asn1.z) || (sVar.M(i12) instanceof org.bouncycastle.asn1.i) || (sVar.M(i12) instanceof y))) {
            this.f55821e = y.y(sVar.M(i12));
            i12++;
        }
        if (i12 < sVar.size() && !(sVar.M(i12) instanceof org.bouncycastle.asn1.y)) {
            this.f55822f = org.bouncycastle.asn1.s.K(sVar.M(i12));
            i12++;
        }
        if (i12 >= sVar.size() || !(sVar.M(i12) instanceof org.bouncycastle.asn1.y)) {
            return;
        }
        this.f55823g = m.F(org.bouncycastle.asn1.s.L((org.bouncycastle.asn1.y) sVar.M(i12), true));
    }

    public static w y(Object obj) {
        if (obj instanceof w) {
            return (w) obj;
        }
        if (obj != null) {
            return new w(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public y B() {
        return this.f55821e;
    }

    public Enumeration F() {
        org.bouncycastle.asn1.s sVar = this.f55822f;
        return sVar == null ? new c() : new d(sVar.N());
    }

    public b[] G() {
        org.bouncycastle.asn1.s sVar = this.f55822f;
        if (sVar == null) {
            return new b[0];
        }
        int size = sVar.size();
        b[] bVarArr = new b[size];
        for (int i9 = 0; i9 < size; i9++) {
            bVarArr[i9] = b.y(this.f55822f.M(i9));
        }
        return bVarArr;
    }

    public oj.a H() {
        return this.f55818b;
    }

    public y I() {
        return this.f55820d;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(7);
        org.bouncycastle.asn1.k kVar = this.f55817a;
        if (kVar != null) {
            fVar.a(kVar);
        }
        fVar.a(this.f55818b);
        fVar.a(this.f55819c);
        fVar.a(this.f55820d);
        y yVar = this.f55821e;
        if (yVar != null) {
            fVar.a(yVar);
        }
        org.bouncycastle.asn1.s sVar = this.f55822f;
        if (sVar != null) {
            fVar.a(sVar);
        }
        m mVar = this.f55823g;
        if (mVar != null) {
            fVar.a(new d1(0, mVar));
        }
        return new a1(fVar);
    }

    public m x() {
        return this.f55823g;
    }

    public mj.c z() {
        return this.f55819c;
    }
}
