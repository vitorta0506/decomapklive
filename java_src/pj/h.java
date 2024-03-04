package pj;

import fk.e;
import java.math.BigInteger;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class h extends org.bouncycastle.asn1.m implements o {

    /* renamed from: a  reason: collision with root package name */
    private fk.e f56934a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f56935b;

    /* renamed from: c  reason: collision with root package name */
    private org.bouncycastle.asn1.n f56936c;

    public h(fk.e eVar, byte[] bArr) {
        this.f56936c = null;
        this.f56934a = eVar;
        this.f56935b = org.bouncycastle.util.a.e(bArr);
        z();
    }

    public h(m mVar, BigInteger bigInteger, BigInteger bigInteger2, s sVar) {
        int R;
        int i9;
        int i10;
        fk.e c0426e;
        this.f56936c = null;
        org.bouncycastle.asn1.n x10 = mVar.x();
        this.f56936c = x10;
        if (x10.F(o.f56967n3)) {
            c0426e = new e.f(((org.bouncycastle.asn1.k) mVar.z()).N(), new BigInteger(1, org.bouncycastle.asn1.o.K(sVar.M(0)).M()), new BigInteger(1, org.bouncycastle.asn1.o.K(sVar.M(1)).M()), bigInteger, bigInteger2);
        } else if (!this.f56936c.F(o.f56969o3)) {
            throw new IllegalArgumentException("This type of ECCurve is not implemented");
        } else {
            s K = s.K(mVar.z());
            int R2 = ((org.bouncycastle.asn1.k) K.M(0)).R();
            org.bouncycastle.asn1.n nVar = (org.bouncycastle.asn1.n) K.M(1);
            if (nVar.F(o.f56973q3)) {
                i9 = org.bouncycastle.asn1.k.K(K.M(2)).R();
                i10 = 0;
                R = 0;
            } else if (!nVar.F(o.f56975r3)) {
                throw new IllegalArgumentException("This type of EC basis is not implemented");
            } else {
                s K2 = s.K(K.M(2));
                int R3 = org.bouncycastle.asn1.k.K(K2.M(0)).R();
                int R4 = org.bouncycastle.asn1.k.K(K2.M(1)).R();
                R = org.bouncycastle.asn1.k.K(K2.M(2)).R();
                i9 = R3;
                i10 = R4;
            }
            c0426e = new e.C0426e(R2, i9, i10, R, new BigInteger(1, org.bouncycastle.asn1.o.K(sVar.M(0)).M()), new BigInteger(1, org.bouncycastle.asn1.o.K(sVar.M(1)).M()), bigInteger, bigInteger2);
        }
        this.f56934a = c0426e;
        if (sVar.size() == 3) {
            this.f56935b = ((n0) sVar.M(2)).L();
        }
    }

    private void z() {
        org.bouncycastle.asn1.n nVar;
        if (fk.c.e(this.f56934a)) {
            nVar = o.f56967n3;
        } else if (!fk.c.c(this.f56934a)) {
            throw new IllegalArgumentException("This type of ECCurve is not implemented");
        } else {
            nVar = o.f56969o3;
        }
        this.f56936c = nVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0061  */
    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.bouncycastle.asn1.r f() {
        /*
            r3 = this;
            org.bouncycastle.asn1.f r0 = new org.bouncycastle.asn1.f
            r1 = 3
            r0.<init>(r1)
            org.bouncycastle.asn1.n r1 = r3.f56936c
            org.bouncycastle.asn1.n r2 = pj.o.f56967n3
            boolean r1 = r1.F(r2)
            if (r1 == 0) goto L35
            pj.l r1 = new pj.l
            fk.e r2 = r3.f56934a
            fk.f r2 = r2.l()
            r1.<init>(r2)
            org.bouncycastle.asn1.r r1 = r1.f()
            r0.a(r1)
            pj.l r1 = new pj.l
            fk.e r2 = r3.f56934a
            fk.f r2 = r2.m()
            r1.<init>(r2)
        L2d:
            org.bouncycastle.asn1.r r1 = r1.f()
            r0.a(r1)
            goto L5d
        L35:
            org.bouncycastle.asn1.n r1 = r3.f56936c
            org.bouncycastle.asn1.n r2 = pj.o.f56969o3
            boolean r1 = r1.F(r2)
            if (r1 == 0) goto L5d
            pj.l r1 = new pj.l
            fk.e r2 = r3.f56934a
            fk.f r2 = r2.l()
            r1.<init>(r2)
            org.bouncycastle.asn1.r r1 = r1.f()
            r0.a(r1)
            pj.l r1 = new pj.l
            fk.e r2 = r3.f56934a
            fk.f r2 = r2.m()
            r1.<init>(r2)
            goto L2d
        L5d:
            byte[] r1 = r3.f56935b
            if (r1 == 0) goto L6b
            org.bouncycastle.asn1.n0 r1 = new org.bouncycastle.asn1.n0
            byte[] r2 = r3.f56935b
            r1.<init>(r2)
            r0.a(r1)
        L6b:
            org.bouncycastle.asn1.a1 r1 = new org.bouncycastle.asn1.a1
            r1.<init>(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: pj.h.f():org.bouncycastle.asn1.r");
    }

    public fk.e x() {
        return this.f56934a;
    }

    public byte[] y() {
        return org.bouncycastle.util.a.e(this.f56935b);
    }
}
