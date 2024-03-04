package oj;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.d1;
import org.bouncycastle.asn1.n0;
/* loaded from: classes7.dex */
public class x extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    org.bouncycastle.asn1.s f55829a;

    /* renamed from: b  reason: collision with root package name */
    org.bouncycastle.asn1.k f55830b;

    /* renamed from: c  reason: collision with root package name */
    org.bouncycastle.asn1.k f55831c;

    /* renamed from: d  reason: collision with root package name */
    a f55832d;

    /* renamed from: e  reason: collision with root package name */
    mj.c f55833e;

    /* renamed from: f  reason: collision with root package name */
    y f55834f;

    /* renamed from: g  reason: collision with root package name */
    y f55835g;

    /* renamed from: h  reason: collision with root package name */
    mj.c f55836h;

    /* renamed from: i  reason: collision with root package name */
    v f55837i;

    /* renamed from: j  reason: collision with root package name */
    n0 f55838j;

    /* renamed from: k  reason: collision with root package name */
    n0 f55839k;

    /* renamed from: l  reason: collision with root package name */
    m f55840l;

    /* JADX WARN: Removed duplicated region for block: B:23:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private x(org.bouncycastle.asn1.s r9) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: oj.x.<init>(org.bouncycastle.asn1.s):void");
    }

    public static x z(Object obj) {
        if (obj instanceof x) {
            return (x) obj;
        }
        if (obj != null) {
            return new x(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public mj.c B() {
        return this.f55833e;
    }

    public n0 F() {
        return this.f55838j;
    }

    public org.bouncycastle.asn1.k G() {
        return this.f55831c;
    }

    public a H() {
        return this.f55832d;
    }

    public y I() {
        return this.f55834f;
    }

    public mj.c J() {
        return this.f55836h;
    }

    public v K() {
        return this.f55837i;
    }

    public n0 L() {
        return this.f55839k;
    }

    public int M() {
        return this.f55830b.R() + 1;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        if (org.bouncycastle.util.h.a("org.bouncycastle.x509.allow_non-der_tbscert") != null && !org.bouncycastle.util.h.b("org.bouncycastle.x509.allow_non-der_tbscert")) {
            org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
            if (!this.f55830b.O(org.bouncycastle.util.b.f56259a)) {
                fVar.a(new d1(true, 0, this.f55830b));
            }
            fVar.a(this.f55831c);
            fVar.a(this.f55832d);
            fVar.a(this.f55833e);
            org.bouncycastle.asn1.f fVar2 = new org.bouncycastle.asn1.f(2);
            fVar2.a(this.f55834f);
            fVar2.a(this.f55835g);
            fVar.a(new a1(fVar2));
            org.bouncycastle.asn1.e eVar = this.f55836h;
            if (eVar == null) {
                eVar = new a1();
            }
            fVar.a(eVar);
            fVar.a(this.f55837i);
            n0 n0Var = this.f55838j;
            if (n0Var != null) {
                fVar.a(new d1(false, 1, n0Var));
            }
            n0 n0Var2 = this.f55839k;
            if (n0Var2 != null) {
                fVar.a(new d1(false, 2, n0Var2));
            }
            m mVar = this.f55840l;
            if (mVar != null) {
                fVar.a(new d1(true, 3, mVar));
            }
            return new a1(fVar);
        }
        return this.f55829a;
    }

    public y x() {
        return this.f55835g;
    }

    public m y() {
        return this.f55840l;
    }
}
