package oj;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.a1;
/* loaded from: classes7.dex */
public class m extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private Hashtable f55791a = new Hashtable();

    /* renamed from: b  reason: collision with root package name */
    private Vector f55792b = new Vector();

    private m(org.bouncycastle.asn1.s sVar) {
        Enumeration N = sVar.N();
        while (N.hasMoreElements()) {
            l B = l.B(N.nextElement());
            if (this.f55791a.containsKey(B.y())) {
                throw new IllegalArgumentException("repeated extension found: " + B.y());
            }
            this.f55791a.put(B.y(), B);
            this.f55792b.addElement(B.y());
        }
    }

    private org.bouncycastle.asn1.n[] B(boolean z10) {
        Vector vector = new Vector();
        for (int i9 = 0; i9 != this.f55792b.size(); i9++) {
            Object elementAt = this.f55792b.elementAt(i9);
            if (((l) this.f55791a.get(elementAt)).G() == z10) {
                vector.addElement(elementAt);
            }
        }
        return I(vector);
    }

    public static m F(Object obj) {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj != null) {
            return new m(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    private org.bouncycastle.asn1.n[] I(Vector vector) {
        int size = vector.size();
        org.bouncycastle.asn1.n[] nVarArr = new org.bouncycastle.asn1.n[size];
        for (int i9 = 0; i9 != size; i9++) {
            nVarArr[i9] = (org.bouncycastle.asn1.n) vector.elementAt(i9);
        }
        return nVarArr;
    }

    public org.bouncycastle.asn1.n[] G() {
        return B(false);
    }

    public Enumeration H() {
        return this.f55792b.elements();
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(this.f55792b.size());
        Enumeration elements = this.f55792b.elements();
        while (elements.hasMoreElements()) {
            fVar.a((l) this.f55791a.get((org.bouncycastle.asn1.n) elements.nextElement()));
        }
        return new a1(fVar);
    }

    public org.bouncycastle.asn1.n[] x() {
        return B(true);
    }

    public l y(org.bouncycastle.asn1.n nVar) {
        return (l) this.f55791a.get(nVar);
    }

    public org.bouncycastle.asn1.n[] z() {
        return I(this.f55792b);
    }
}
